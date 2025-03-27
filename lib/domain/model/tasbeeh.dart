import 'package:freezed_annotation/freezed_annotation.dart';

part 'tasbeeh.freezed.dart';
part 'tasbeeh.g.dart';

@freezed
class TasbeehModel with _$TasbeehModel {
  factory TasbeehModel({
    required int id,
    required String title,
    required String desc,
    required int maxCount,
    required int currentCount,
  }) = _TasbeehModel;

  factory TasbeehModel.fromJson(Map<String, dynamic> json) =>
      _$TasbeehModelFromJson(json);
}
