class QuranPrints {
  QuranPrints({
    this.nameReferance,
    this.description,
    this.language,
    this.previewImage,
    this.attachmentLocation,
    this.addedPagesAttachmentLocation,
    this.juz2ToPageNumbers,
    this.sorahToPageNumbers,
  });
  String? nameReferance;
  String? description;
  String? language;
  String? previewImage;
  String? attachmentLocation;
  String? addedPagesAttachmentLocation;
  List<Map<int, int>>? juz2ToPageNumbers;
  List<Map<String, int>>? sorahToPageNumbers;
}
