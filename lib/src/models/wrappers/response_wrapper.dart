class ResponseWrapper<T> {
  final T? data;
  final bool? status;
  final String? message;

  ResponseWrapper({this.data, this.status, this.message});
}
