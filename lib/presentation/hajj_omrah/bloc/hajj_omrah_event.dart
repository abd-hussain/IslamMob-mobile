part of 'hajj_omrah_bloc.dart';

@freezed
class HajjOmrahEvent with _$HajjOmrahEvent {
  const factory HajjOmrahEvent.fillInitialValue(
      HajjOmrahScreenType screenType) = _FillInitialValue;
  const factory HajjOmrahEvent.loadingState(
    VideoProcessState state,
  ) = _LoadingState;
}
