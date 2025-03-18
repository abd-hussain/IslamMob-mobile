import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';

part 'tasbeeh.freezed.dart';

@freezed
class TasbeehModel with _$TasbeehModel {
  factory TasbeehModel({
    required int id,
    required MultiLanguageString title,
    required MultiLanguageString desc,
    required int maxCount,
    required int currentCount,
  }) = _TasbeehModel;
}
