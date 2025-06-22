/// Base class for all rest client exceptions
abstract class HttpApiException implements Exception {
  /// Creates an [HttpApiException] with the given message and optional status code.
  ///
  /// [message] - A descriptive error message explaining what went wrong.
  /// [statusCode] - The HTTP status code associated with the error, if available.
  const HttpApiException({required this.message, this.statusCode});

  /// A descriptive error message explaining what went wrong.
  final String message;

  /// The HTTP status code associated with the error, if available.
  final int? statusCode;
}

/// Base class for all rest client exceptions that have a cause
abstract class HttpApiExceptionWithCause extends HttpApiException {
  /// Creates an [HttpApiExceptionWithCause] with the given parameters.
  ///
  /// [message] - A descriptive error message explaining what went wrong.
  /// [cause] - The underlying exception that caused this exception.
  /// [statusCode] - The HTTP status code associated with the error, if available.
  /// [stackTrace] - The stack trace from where the exception occurred.
  const HttpApiExceptionWithCause({
    required super.message,
    required this.cause,
    super.statusCode,
    this.stackTrace,
  });

  /// The cause of the exception
  ///
  /// It is the inner exception that caused this exception to be thrown
  final Object? cause;

  /// The stack trace from where the exception occurred.
  final StackTrace? stackTrace;
}

/// [ClientException] is thrown if something went wrong on client side
class ClientException extends HttpApiException {
  /// Creates a [ClientException] with the given parameters.
  ///
  /// [message] - A descriptive error message explaining what went wrong.
  /// [statusCode] - The HTTP status code associated with the error, if available.
  /// [cause] - The underlying exception that caused this exception.
  /// [stackTrace] - The stack trace from where the exception occurred.
  const ClientException({
    required super.message,
    super.statusCode,
    this.cause,
    this.stackTrace,
  });

  /// The cause of the exception
  ///
  /// It is the inner exception that caused this exception to be thrown
  final Object? cause;

  /// The stack trace from where the exception occurred.
  final StackTrace? stackTrace;

  @override
  String toString() =>
      'ClientException('
      'message: $message,'
      'statusCode: $statusCode,'
      'cause: $cause,'
      'stackTrace: $stackTrace'
      ')';
}

/// [ConnectionException] is thrown if there are problems with the connection
class ConnectionException extends HttpApiExceptionWithCause {
  /// Creates a [ConnectionException] with the given parameters.
  ///
  /// [message] - A descriptive error message explaining the connection problem.
  /// [statusCode] - The HTTP status code associated with the error, if available.
  /// [cause] - The underlying exception that caused this connection exception.
  /// [stackTrace] - The stack trace from where the exception occurred.
  const ConnectionException({
    required super.message,
    super.statusCode,
    super.cause,
    super.stackTrace,
  });

  @override
  String toString() =>
      'ConnectionException('
      'message: $message,'
      'statusCode: $statusCode,'
      'cause: $cause,'
      'stackTrace: $stackTrace'
      ')';
}
