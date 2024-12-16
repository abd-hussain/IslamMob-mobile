part of 'quran_prints_bloc.dart';

@freezed
class QuranPrintsEvent with _$QuranPrintsEvent {
  factory QuranPrintsEvent.initializeFetchingData() = _InitializeFetchingData;

  factory QuranPrintsEvent.updatelistOfPrints(
      {required List<QuranPrints>? list}) = _UpdatelistOfPrints;

  factory QuranPrintsEvent.updateInternetConnectionStatus(
      {required bool status}) = _UpdateInternetConnectionStatus;

  factory QuranPrintsEvent.updatePrintsDownloading(
      {required List<String> print}) = _UpdatePrintsDownloading;
}
