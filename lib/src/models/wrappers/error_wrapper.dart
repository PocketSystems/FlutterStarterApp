import 'package:flutter_starter_app/src/models/wrappers/response_wrapper.dart';

class ErrorWrapper extends ResponseWrapper {
  final dynamic error;
  final String? message;
  final bool status;

  ErrorWrapper({this.error, this.message, this.status = false})
      : super(
          message: message,
          status: status,
          data: error,
        );
}
