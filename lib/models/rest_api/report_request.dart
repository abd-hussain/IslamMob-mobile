import 'dart:io';
import 'package:islam_app/utils/mixins.dart';

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

class ReportRequestToFirebase extends Model {
  ReportRequestToFirebase({
    required this.content,
    this.attach1,
    this.attach2,
    this.attach3,
  });
  String content;
  String? attach1;
  String? attach2;
  String? attach3;

  @override
  Map<String, dynamic> toJson() {
    return {
      "content": content,
      "attach1": attach1,
      "attach2": attach2,
      "attach3": attach3,
    };
  }
}
