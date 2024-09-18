import 'dart:io';

class ReportRequest {
  ReportRequest({
    required this.content,
    this.attach1,
    this.attach2,
    this.attach3,
  });
  String content;
  File? attach1;
  File? attach2;
  File? attach3;
}
