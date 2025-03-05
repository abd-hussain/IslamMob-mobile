import 'package:freezed_annotation/freezed_annotation.dart';
part 'hisn_al_muslim.freezed.dart';

@freezed
class HisnAlMuslimModel with _$HisnAlMuslimModel {
  factory HisnAlMuslimModel({
    required int id,
    required String title,
    required List<HisnAlMuslimDetailsModel> list,
    @Default(false) bool isFavorite,
  }) = _HisnAlMuslimModel;
}

class HisnAlMuslimDetailsModel {
  final String descriptionTitle;
  final String description;
  final String referance;
  final int readCount;
  int currentCount;

  HisnAlMuslimDetailsModel({
    required this.descriptionTitle,
    required this.description,
    required this.referance,
    required this.readCount,
    this.currentCount = 0,
  });
}
