part of 'hajj_omrah_bloc.dart';

@freezed
class HajjOmrahState with _$HajjOmrahState {
  const factory HajjOmrahState({
    @Default([]) List<HajjOmrahData> listOfItems,
    @Default(false) bool isRtlLanguage,
    @Default(VideoProcessState.loading()) VideoProcessState processState,
  }) = _HajjOmrahState;
}

@freezed
sealed class VideoProcessState with _$VideoProcessState {
  const factory VideoProcessState.loading() = _Loading;
  const factory VideoProcessState.success() = _Success;
  const factory VideoProcessState.error() = _Error;
}

@freezed
sealed class HajjOmrahScreenType with _$HajjOmrahScreenType {
  const factory HajjOmrahScreenType.hajj() = _Hajj;
  const factory HajjOmrahScreenType.omrah() = _Omrah;
}
