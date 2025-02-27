part of 'hisn_al_muslim_list_bloc.dart';

@freezed
class HisnAlMuslimListEvent with _$HisnAlMuslimListEvent {
  const factory HisnAlMuslimListEvent.started() = _Started;
  factory HisnAlMuslimListEvent.updateSelectedTab(int index) =
      _UpdateSelectedTab;
}
