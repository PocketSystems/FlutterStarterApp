class ResponseWrapper<T> {
  final T? data;
  final bool success;
  final String? message;
  final int? statusCode;

  ResponseWrapper({
    this.data,
    this.success = true,
    this.message,
    this.statusCode,
  });
}
