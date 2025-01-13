part of 'qibla_finder_bloc.dart';

@freezed
class QiblaFinderState with _$QiblaFinderState {
  const factory QiblaFinderState({
    @Default(QiblaFinderProcessState.loading()) QiblaFinderProcessState status,
  }) = _QiblaFinderState;
}

@freezed
sealed class QiblaFinderProcessState with _$QiblaFinderProcessState {
  const factory QiblaFinderProcessState.loading() =
      QiblaFinderProcessStateLoading;
  const factory QiblaFinderProcessState.error() = QiblaFinderProcessStateError;
  const factory QiblaFinderProcessState.succss() =
      QiblaFinderProcessStateSuccss;
}
