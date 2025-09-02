import 'dart:async';

import 'package:flutter/material.dart';

/// Utility class for memory management and leak prevention.
///
/// This class provides helper methods for managing resources and preventing
/// memory leaks in the Islamic app.
class MemoryUtils {
  /// Safely cancel a stream subscription
  static void safeCancelSubscription(
    StreamSubscription<dynamic>? subscription,
  ) {
    try {
      subscription?.cancel();
    } catch (e) {
      debugPrint('Error canceling subscription: $e');
    }
  }

  /// Safely cancel multiple stream subscriptions
  static void safeCancelSubscriptions(
    List<StreamSubscription<dynamic>?> subscriptions,
  ) {
    for (final subscription in subscriptions) {
      safeCancelSubscription(subscription);
    }
  }

  /// Create a debounced function to prevent excessive calls
  static Function debounce(Function func, Duration delay) {
    Timer? timer;
    return () {
      timer?.cancel();
      timer = Timer(delay, () => func());
    };
  }

  /// Create a throttled function to limit call frequency
  static Function throttle(Function func, Duration delay) {
    bool isThrottled = false;

    return () {
      if (!isThrottled) {
        isThrottled = true;
        func();
      }
    };
  }

  /// Check if the widget is still mounted before calling setState
  static void safeSetState(State state, VoidCallback fn) {
    if (state.mounted) {
      state.setState(fn);
    }
  }

  /// Dispose multiple resources safely
  static void safeDispose(List<VoidCallback> disposers) {
    for (final disposer in disposers) {
      try {
        disposer();
      } catch (e) {
        debugPrint('Error during disposal: $e');
      }
    }
  }

  /// Create a memory-efficient timer that auto-disposes
  static Timer createAutoDisposeTimer(
    Duration duration,
    VoidCallback callback,
  ) {
    return Timer(duration, callback);
  }

  /// Create a periodic timer that can be easily disposed
  static Timer createDisposablePeriodicTimer(
    Duration duration,
    void Function(Timer) callback,
  ) {
    return Timer.periodic(duration, callback);
  }
}
