import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed/quran_prints.freezed.dart';

@freezed
class QuranPrints with _$QuranPrints {
  factory QuranPrints({
    String? fieldName,
    String? nameReferance,
    String? description,
    String? language,
    String? previewImage,
    String? attachmentLocation,
    String? addedPagesAttachmentLocation,
    Map<String, dynamic>? juz2ToPageNumbers,
    Map<String, dynamic>? sorahToPageNumbers,
  }) = _QuranPrints;
}
