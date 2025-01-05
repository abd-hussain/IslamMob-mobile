import 'package:freezed_annotation/freezed_annotation.dart';
part 'language.freezed.dart';

@freezed
class LanguageModel with _$LanguageModel {
  factory LanguageModel({
    required String name,
    required String flagCode,
    required String languageCode,
    required String selectButtonTitle,
  }) = _LanguageModel;
}
