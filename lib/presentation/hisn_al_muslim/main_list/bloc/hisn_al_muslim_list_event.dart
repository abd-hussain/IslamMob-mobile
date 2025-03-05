part of 'hisn_al_muslim_list_bloc.dart';

@freezed
class HisnAlMuslimListEvent with _$HisnAlMuslimListEvent {
  const factory HisnAlMuslimListEvent.getListOfAzkar() = _GetListOfAzkar;
  factory HisnAlMuslimListEvent.updateSelectedTab(int index) = _UpdateSelectedTab;
  const factory HisnAlMuslimListEvent.addRemoveItemToFavorite(HisnAlMuslimModel item) = _AddItemToFavorite;
  const factory HisnAlMuslimListEvent.search(String value) = _Search;
}
