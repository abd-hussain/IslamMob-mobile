import 'package:firebase_performance/firebase_performance.dart';

class FirebasePerformanceService {
  final String eventName;
  const FirebasePerformanceService({required this.eventName});

  void startTrace() {
    final trace = FirebasePerformance.instance.newTrace(eventName);
    trace.start();
  }

  void stopTrace() {
    final trace = FirebasePerformance.instance.newTrace(eventName);
    trace.stop();
  }
}
