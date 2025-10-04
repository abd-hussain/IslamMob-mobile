/// Custom exception for Google Sign-In cancellation
class GoogleSignInCancelledException implements Exception {
  final String message;
  GoogleSignInCancelledException(this.message);

  @override
  String toString() => message;
}
