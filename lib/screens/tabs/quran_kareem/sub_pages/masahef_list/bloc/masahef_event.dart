part of 'masahef_bloc.dart';

@freezed
class MasahefEvent with _$MasahefEvent {
  factory MasahefEvent.updatelistOfPrints(List<QuranPrints>? list) =
      _UpdatelistOfPrints;
}
