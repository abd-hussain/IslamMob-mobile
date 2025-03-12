part of 'hisn_al_muslim_details_bloc.dart';

@freezed
class HisnAlMuslimDetailsEvent with _$HisnAlMuslimDetailsEvent {
  const factory HisnAlMuslimDetailsEvent.fillInitialValue(
      HisnAlMuslimModel? item) = _FillInitialValue;
  const factory HisnAlMuslimDetailsEvent.updateFavoriteItem() =
      _UpdateFavoriteItem;
  const factory HisnAlMuslimDetailsEvent.updateTextToShare({
    required String description,
  }) = _UpdateTextToShare;
  const factory HisnAlMuslimDetailsEvent.shareItem({
    required String title,
  }) = _ShareItem;
}
