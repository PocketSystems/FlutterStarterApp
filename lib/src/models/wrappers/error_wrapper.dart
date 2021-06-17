import 'package:flutter_starter_app/src/models/wrappers/response_wrapper.dart';

class ErrorWrapper extends ResponseWrapper {
  final dynamic error;
  final String? message;
  final bool status;
  final int? statusCode;

  ErrorWrapper({
    this.error,
    this.message,
    this.status = false,
    this.statusCode,
  }) : super(
          message: message,
          status: status,
          data: error,
          statusCode: statusCode,
        );
}
