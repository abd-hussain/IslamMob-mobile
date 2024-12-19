import 'package:freezed_annotation/freezed_annotation.dart';
part 'quran_copy.freezed.dart';

@freezed
class QuranCopy with _$QuranCopy {
  factory QuranCopy({
    required String filePath,
    required int lastPageNumber,
    required Map<String, dynamic>? juz2ToPageNumbers,
    required Map<String, dynamic>? sorahToPageNumbers,
  }) = _QuranCopy;
}
