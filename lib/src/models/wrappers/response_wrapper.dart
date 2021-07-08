class ResponseWrapper<T> {
  final T? data;
  final bool status;
  final String? message;
  final int? statusCode;

  ResponseWrapper({
    this.data,
    this.status = true,
    this.message,
    this.statusCode,
  });
}
