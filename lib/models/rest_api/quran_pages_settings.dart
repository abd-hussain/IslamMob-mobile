enum Hezeb { idl, part, quarter, half, threeQuarters }

class QuranPagesSettings {
  QuranPagesSettings({
    required this.pageNumber,
    required this.sorahNameReference,
    required this.juzaNumber,
    required this.hezebNumber,
    required this.hezebStatus,
  });
  int pageNumber;
  String sorahNameReference;
  int juzaNumber;
  Hezeb hezebStatus;
  int hezebNumber;
}
