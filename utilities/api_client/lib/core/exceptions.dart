class HttpException implements Exception {
  HttpException(
      {required this.status, required this.message, required this.requestId});
  final String message;
  final int status;
  final String requestId;
}
