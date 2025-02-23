import 'package:freezed_annotation/freezed_annotation.dart';
part 'hisn_al_muslim.freezed.dart';

@freezed
class HisnAlMuslimModel with _$HisnAlMuslimModel {
  factory HisnAlMuslimModel({
    required String title,
    required String description,
    required int currentCounter,
    required int totalCounter,
  }) = _HisnAlMuslimModel;
}
