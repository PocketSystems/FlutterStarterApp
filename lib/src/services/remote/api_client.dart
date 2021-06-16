import 'package:dio/dio.dart';
import 'package:flutter_starter_app/src/models/wrappers/error_wrapper.dart';
import 'package:flutter_starter_app/src/models/wrappers/response_wrapper.dart';
import 'package:flutter_starter_app/src/services/local/flavor_service.dart';

const _defaultConnectTimeout = Duration.millisecondsPerMinute;
const _defaultReceiveTimeout = Duration.millisecondsPerMinute;

class ApiClient {
  Dio? _dio;

  final List<Interceptor>? interceptors;

  ApiClient(Dio dio, {this.interceptors}) {
    _dio = dio;
    final customHeaders = Map<String, dynamic>();
    customHeaders['Content-Type'] = 'application/json';
    customHeaders['Accept'] = 'application/json';
    _dio!
      ..options.baseUrl = FlavorService.getBaseApi()
      ..options.connectTimeout = _defaultConnectTimeout
      ..options.receiveTimeout = _defaultReceiveTimeout
      ..httpClientAdapter
      ..options.headers = customHeaders;
    if (interceptors?.isNotEmpty ?? false) {
      _dio?.interceptors.addAll(interceptors!);
    }
  }

  Future<ResponseWrapper> get(
    String uri, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio?.get(
        uri,
        queryParameters: params,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return ResponseWrapper(
        data: response?.data['data'],
        message: response?.data['message'],
        status: response?.data['status'],
      );
    } on DioError catch (e) {
      return ErrorWrapper(
        error: e.error,
        message: e.message,
      );
    }
  }

  Future<ResponseWrapper> post(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio?.post(uri,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress,
          onSendProgress: onSendProgress);
      return ResponseWrapper(
        data: response?.data['data'],
        message: response?.data['message'],
        status: response?.data['status'],
      );
    } on DioError catch (e) {
      return ErrorWrapper(
        error: e.error,
        message: e.message,
      );
    }
  }
}
