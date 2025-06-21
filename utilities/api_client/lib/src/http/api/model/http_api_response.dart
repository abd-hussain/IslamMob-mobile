/// A generic HTTP API response wrapper.
///
/// This class encapsulates the response from an HTTP API call, including
/// the response data, status code, and status message. The generic type [T]
/// represents the type of the response data.
///
/// Example usage:
/// ```dart
/// HttpApiResponse<User> response = HttpApiResponse(
///   data: user,
///   statusCode: 200,
///   statusMessage: 'OK',
/// );
/// ```
class HttpApiResponse<T> {
  /// Creates an [HttpApiResponse] with the given parameters.
  ///
  /// [data] - The response data of type [T], if available.
  /// [statusCode] - The HTTP status code of the response.
  /// [statusMessage] - The HTTP status message associated with the response.
  HttpApiResponse({
    this.data,
    this.statusCode,
    this.statusMessage,
  });

  /// The response data of type [T].
  ///
  /// This contains the actual data returned by the API. It can be null
  /// if the response doesn't contain any data or if an error occurred.
  final T? data;

  /// The HTTP status code of the response.
  ///
  /// Standard HTTP status codes like 200 (OK), 404 (Not Found),
  /// 500 (Internal Server Error), etc.
  final int? statusCode;

  /// The HTTP status message associated with the response.
  ///
  /// A human-readable message that corresponds to the status code,
  /// such as "OK", "Not Found", "Internal Server Error", etc.
  final String? statusMessage;
}
