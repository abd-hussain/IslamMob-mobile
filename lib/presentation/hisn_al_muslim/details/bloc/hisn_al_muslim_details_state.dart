part of 'hisn_al_muslim_details_bloc.dart';

@freezed
class HisnAlMuslimDetailsState with _$HisnAlMuslimDetailsState {
  const factory HisnAlMuslimDetailsState({
    HisnAlMuslimModel? item,
    @Default("") textToShare,
    @Default(false) bool isRtlLanguage,
  }) = _HisnAlMuslimDetailsState;
}
