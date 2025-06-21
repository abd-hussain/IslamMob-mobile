part of 'qibla_finder_bloc.dart';

/// Represents the state of the Qibla finder feature.
///
/// This state class manages the current status of the Qibla finder,
/// including loading, error, and success states during the process
/// of determining the Qibla direction.
@freezed
class QiblaFinderState with _$QiblaFinderState {
  /// Creates a [QiblaFinderState] with the given status.
  ///
  /// The [status] parameter represents the current process state
  /// of the Qibla finder. Defaults to loading state if not specified.
  const factory QiblaFinderState({
    @Default(QiblaFinderProcessState.loading()) QiblaFinderProcessState status,
  }) = _QiblaFinderState;
}

/// Represents the different process states of the Qibla finder.
///
/// This sealed class defines the possible states during the Qibla
/// finding process: loading, error, and success states.
@freezed
sealed class QiblaFinderProcessState with _$QiblaFinderProcessState {
  const factory QiblaFinderProcessState.loading() =
      QiblaFinderProcessStateLoading;
  const factory QiblaFinderProcessState.error() = QiblaFinderProcessStateError;
  const factory QiblaFinderProcessState.succss() =
      QiblaFinderProcessStateSuccss;
}
