import 'package:freezed_annotation/freezed_annotation.dart';

part 'hisn_al_muslim.freezed.dart';

@freezed
class HisnAlMuslimModel with _$HisnAlMuslimModel {
  factory HisnAlMuslimModel({
    required int id,
    required String title,
    required HisnAlMuslimModelState details,
    @Default(false) bool isFavorite,
  }) = _HisnAlMuslimModel;
}

@freezed
sealed class HisnAlMuslimModelState with _$HisnAlMuslimModelState {
  const factory HisnAlMuslimModelState.text(
      List<String> list, List<String> referance) = HisnAlMuslimModelStateText;
  const factory HisnAlMuslimModelState.counter(
      List<HisnAlMuslimDetailsModel> list) = HisnAlMuslimModelStateCounter;
}

class HisnAlMuslimDetailsModel {
  final String descriptionTitle;
  final String description;
  final List<String> references;
  final int readCount;
  int currentCount;

  HisnAlMuslimDetailsModel({
    required this.descriptionTitle,
    required this.description,
    required this.references,
    required this.readCount,
    this.currentCount = 0,
  });
}
