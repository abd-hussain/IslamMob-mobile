part of 'hisn_al_muslim_details_bloc.dart';

@freezed
class HisnAlMuslimDetailsState with _$HisnAlMuslimDetailsState {
  const factory HisnAlMuslimDetailsState({
    HisnAlMuslimModel? item,
    @Default("") textToShare,
  }) = _HisnAlMuslimDetailsState;
}
