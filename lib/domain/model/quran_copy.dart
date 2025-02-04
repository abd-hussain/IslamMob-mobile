import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed/quran_copy.freezed.dart';

@freezed
class QuranCopy with _$QuranCopy {
  factory QuranCopy({
    required String fileName,
    required String lastPageNumber,
    required Map<String, dynamic>? juz2ToPageNumbers,
    required Map<String, dynamic>? sorahToPageNumbers,
  }) = _QuranCopy;
}
