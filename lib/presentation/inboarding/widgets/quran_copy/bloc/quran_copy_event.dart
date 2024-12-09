part of 'quran_copy_bloc.dart';

@freezed
class QuranCopyEvent with _$QuranCopyEvent {
  factory QuranCopyEvent.updatelistOfPrints(List<QuranPrints>? list) =
      _UpdatelistOfPrints;

  factory QuranCopyEvent.updateInternetConnectionStatus(bool status) =
      _UpdateInternetConnectionStatus;

  factory QuranCopyEvent.updatePrintsDownloading(List<String> print) =
      _UpdatePrintsDownloading;
}
