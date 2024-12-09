class QuranCopy {
  final String filePath;
  final int lastPageNumber;
  final Map<String, dynamic>? juz2ToPageNumbers;
  final Map<String, dynamic>? sorahToPageNumbers;

  QuranCopy({
    required this.filePath,
    required this.lastPageNumber,
    required this.juz2ToPageNumbers,
    required this.sorahToPageNumbers,
  });
}
