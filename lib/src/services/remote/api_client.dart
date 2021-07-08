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
      ..options.baseUrl = FlavorService.getBaseApi
      ..options.connectTimeout = _defaultConnectTimeout
      ..options.receiveTimeout = _defaultReceiveTimeout
      ..httpClientAdapter
      ..options.headers = customHeaders;
    if (interceptors?.isNotEmpty ?? false) {
      _dio?.interceptors.addAll(interceptors!);
    }
  }

  ResponseWrapper _response(Response? response) {
    return ResponseWrapper(
      data: response?.data?['data'] ?? response?.data,
      message: response?.data?['message'] ?? response?.statusMessage,
      statusCode: response?.statusCode,
    );
  }

  ErrorWrapper _error(DioError? error) {
    return ErrorWrapper(
      error: error?.error,
      message: error?.message,
      statusCode: error?.response?.statusCode,
    );
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
      return _response(response);
    } on DioError catch (e) {
      return _error(e);
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
      return _response(response);
    } on DioError catch (e) {
      return _error(e);
    }
  }
}
