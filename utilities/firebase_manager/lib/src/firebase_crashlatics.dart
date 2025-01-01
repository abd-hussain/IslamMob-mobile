import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:logger_manager/logger_manager.dart';

class FirebaseCrashlatics {
  dynamic logErrorMessageCrashlytics(
      {required dynamic error, required String message}) {
    LoggerManagerBase.logErrorMessage(error: error, message: message);
    FirebaseCrashlytics.instance.recordError(error, StackTrace.current);
  }
}
