import 'package:freezed_annotation/freezed_annotation.dart';

part 'hisn_al_muslim.freezed.dart';

@freezed
class HisnAlMuslimModel with _$HisnAlMuslimModel {
  factory HisnAlMuslimModel({
    required int id,
    required MultiLanguageString title,
    required HisnAlMuslimModelState details,
    @Default(false) bool isFavorite,
  }) = _HisnAlMuslimModel;
}

@freezed
sealed class HisnAlMuslimModelState with _$HisnAlMuslimModelState {
  const factory HisnAlMuslimModelState.text(
          {required List<MultiLanguageString> list,
          required List<MultiLanguageString> referance}) =
      HisnAlMuslimModelStateText;
  const factory HisnAlMuslimModelState.counter(
          List<HisnAlMuslimCounterDetailsModel> list) =
      HisnAlMuslimModelStateCounter;
}

class HisnAlMuslimCounterDetailsModel {
  final MultiLanguageString descriptionTitle;
  final MultiLanguageString description;
  final List<MultiLanguageString> references;
  final int readCount;
  int currentCount;

  HisnAlMuslimCounterDetailsModel({
    required this.descriptionTitle,
    required this.description,
    required this.references,
    required this.readCount,
    this.currentCount = 0,
  });

  /// Ensuring multi-language strings are properly defined
  void assertValid() {
    descriptionTitle.assertValid();
    description.assertValid();
    for (final ref in references) {
      ref.assertValid();
    }
  }
}

/// Helper class to handle multi-language strings
class MultiLanguageString {
  final String ar;
  final String en;

  MultiLanguageString({required this.ar, required this.en});

  /// Method to get the text based on language preference
  String getText({required bool isArabic}) => isArabic ? ar : en;

  /// Assertion to ensure both languages are provided
  void assertValid() {
    assert(ar.isNotEmpty, "Arabic string must not be empty");
    assert(en.isNotEmpty, "English string must not be empty");
  }
}
