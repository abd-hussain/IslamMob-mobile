/// An exception thrown when network connectivity issues occur.
///
/// This exception is used to indicate problems with network connectivity,
/// such as when the device is not connected to the internet or when
/// network operations fail.
class ConnectionException implements Exception {
  /// Creates a [ConnectionException] with the specified error message.
  ///
  /// The [message] parameter is required and should describe the specific
  /// connectivity issue that occurred.
  ConnectionException({required this.message});

  /// A descriptive message explaining the connectivity issue.
  ///
  /// This message provides details about what went wrong with the
  /// network connection or connectivity check.
  final String message;
}
