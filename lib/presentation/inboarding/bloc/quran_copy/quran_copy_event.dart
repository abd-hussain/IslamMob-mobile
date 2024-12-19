part of 'quran_copy_bloc.dart';

@freezed
class QuranCopyEvent with _$QuranCopyEvent {
  factory QuranCopyEvent.getlistOfPrints() = _GetListOfPrints;

  factory QuranCopyEvent.updateInternetConnectionStatus(bool status) = _UpdateInternetConnectionStatus;

  factory QuranCopyEvent.updatePrintsDownloading(List<String> print) = _UpdatePrintsDownloading;

  const factory QuranCopyEvent.setupCopy({required QuranPrints printItem}) = _SetupCopy;
}
