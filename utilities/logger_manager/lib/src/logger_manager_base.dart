import 'package:logger/logger.dart';

class LoggerManagerBase {
  static final logger = Logger();

  static dynamic logDebugMessage({required String message}) {
    logger.d(message);
  }

  static dynamic logErrorMessage(
      {required dynamic error, required String message}) {
    logger.e("## ERROR - $message", error: error);
  }
}
