class QuranPrints {
  QuranPrints({
    this.fieldName,
    this.nameReferance,
    this.description,
    this.language,
    this.previewImage,
    this.attachmentLocation,
    this.addedPagesAttachmentLocation,
    this.juz2ToPageNumbers,
    this.sorahToPageNumbers,
  });
  String? fieldName;
  String? nameReferance;
  String? description;
  String? language;
  String? previewImage;
  String? attachmentLocation;
  String? addedPagesAttachmentLocation;
  List<Map<int, int>>? juz2ToPageNumbers;
  List<Map<String, int>>? sorahToPageNumbers;
}
