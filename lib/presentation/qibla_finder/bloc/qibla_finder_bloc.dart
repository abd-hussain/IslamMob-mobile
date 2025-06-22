import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qibla_finder_bloc.freezed.dart';
part 'qibla_finder_event.dart';
part 'qibla_finder_state.dart';

/// BLoC for managing Qibla finder functionality.
///
/// This BLoC handles the state and events related to finding the Qibla direction
/// (the direction towards the Kaaba in Mecca) for Islamic prayers. It manages
/// compass functionality, location services, and direction calculations.
class QiblaFinderBloc extends Bloc<QiblaFinderEvent, QiblaFinderState> {
  /// Creates a [QiblaFinderBloc] with initial state.
  ///
  /// Initializes the bloc with default state and registers event handlers
  /// for Qibla finder setup and direction calculations.
  QiblaFinderBloc() : super(const QiblaFinderState()) {
    on<_QiblaFinderSetup>(_qiblaFinderSetup);
  }

  FutureOr<void> _qiblaFinderSetup(
    _QiblaFinderSetup event,
    Emitter<QiblaFinderState> emit,
  ) {}
}
