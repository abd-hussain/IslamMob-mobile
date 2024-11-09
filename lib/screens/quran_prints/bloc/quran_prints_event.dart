part of 'quran_prints_bloc.dart';

@freezed
class QuranPrintsEvent with _$QuranPrintsEvent {
  factory QuranPrintsEvent.updatelistOfPrints(List<QuranPrints>? list) =
      _UpdatelistOfPrints;

  factory QuranPrintsEvent.updateInternetConnectionStatus(bool status) =
      _UpdateInternetConnectionStatus;

  factory QuranPrintsEvent.updatePrintsDownloading(List<String> print) =
      _UpdatePrintsDownloading;
}
