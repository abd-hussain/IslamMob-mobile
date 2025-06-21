/// An exception thrown when HTTP requests fail or return error responses.
///
/// This exception encapsulates HTTP error information including the status code,
/// error message, and request identifier for debugging and error handling purposes.
class HttpException implements Exception {
  /// Creates an [HttpException] with the specified error details.
  ///
  /// All parameters are required:
  /// - [status]: The HTTP status code of the failed request
  /// - [message]: A descriptive error message explaining what went wrong
  /// - [requestId]: A unique identifier for the request that failed
  HttpException(
      {required this.status, required this.message, required this.requestId});

  /// A descriptive message explaining the HTTP error.
  ///
  /// This message provides details about what went wrong with the
  /// HTTP request or response.
  final String message;

  /// The HTTP status code of the failed request.
  ///
  /// This represents the HTTP response status code (e.g., 404, 500, 401)
  /// that was returned when the request failed.
  final int status;

  /// A unique identifier for the failed request.
  ///
  /// This ID can be used for debugging, logging, and correlating
  /// errors with specific API requests.
  final String requestId;
}
