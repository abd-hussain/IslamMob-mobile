part of 'hisn_al_muslim_list_bloc.dart';

@freezed
class HisnAlMuslimListState with _$HisnAlMuslimListState {
  const factory HisnAlMuslimListState({
    @Default([]) List<HisnAlMuslimModel> list,
    @Default(0) int selectedIndex,
  }) = _HisnAlMuslimListState;
}
