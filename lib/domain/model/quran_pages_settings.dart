enum Hezeb { idl, part, quarter, half, threeQuarters }

class QuranPagesSettings {
  int pageNumber;
  int juzaNumber;
  int hezebNumber;
  Hezeb hezebStatus;
  String sorahNameReference;

  QuranPagesSettings({
    required this.pageNumber,
    required this.juzaNumber,
    required this.hezebNumber,
    required this.hezebStatus,
    required this.sorahNameReference,
  });
}
