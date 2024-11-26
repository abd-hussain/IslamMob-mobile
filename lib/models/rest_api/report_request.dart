import 'dart:io';
import 'package:islam_app/utils/mixins.dart';

class ReportRequest {
  String content;
  File? attach1;
  File? attach2;
  File? attach3;
  ReportRequest({
    required this.content,
    this.attach1,
    this.attach2,
    this.attach3,
  });
}

class ReportRequestToFirebase extends Model {
  String content;
  String? attach1;
  String? attach2;
  String? attach3;
  ReportRequestToFirebase({
    required this.content,
    this.attach1,
    this.attach2,
    this.attach3,
  });
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
