import 'package:firebase_performance/firebase_performance.dart';

/// A repository for managing Firebase Performance monitoring traces.
///
/// This class provides a simplified interface for starting and stopping
/// Firebase Performance traces to monitor specific events or operations
/// in the application. Each instance is associated with a specific event name.
class FirebasePerformanceRepository {
  /// The name of the event being traced.
  ///
  /// This identifier is used to create and manage Firebase Performance
  /// traces for monitoring specific operations or events in the application.
  final String eventName;

  /// Creates a [FirebasePerformanceRepository] for the specified event.
  ///
  /// The [eventName] parameter is required and should be a descriptive
  /// name for the operation or event being monitored.
  const FirebasePerformanceRepository({required this.eventName});

  /// Starts a Firebase Performance trace for the configured event.
  ///
  /// This method creates a new trace instance using the [eventName]
  /// and begins monitoring the performance of the associated operation.
  /// Call this method at the beginning of the operation you want to monitor.
  void startTrace() {
    final trace = FirebasePerformance.instance.newTrace(eventName);
    trace.start();
  }

  /// Stops the Firebase Performance trace for the configured event.
  ///
  /// This method stops the trace that was previously started with [startTrace].
  /// Call this method when the monitored operation completes to record
  /// the performance metrics.
  void stopTrace() {
    final trace = FirebasePerformance.instance.newTrace(eventName);
    trace.stop();
  }
}
