part of 'quran_list_prints_bloc.dart';

@freezed
class QuranListPrintsEvent with _$QuranListPrintsEvent {
  factory QuranListPrintsEvent.updatelistOfPrints(List<QuranPrints>? list) =
      _UpdatelistOfPrints;

  factory QuranListPrintsEvent.updateInternetConnectionStatus(bool status) =
      _UpdateInternetConnectionStatus;
}
