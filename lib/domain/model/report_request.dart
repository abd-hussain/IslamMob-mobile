import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'report_request.freezed.dart';
part 'report_request.g.dart';

@freezed
class ReportRequest with _$ReportRequest {
  factory ReportRequest({
    required String content,
    File? attach1,
    File? attach2,
    File? attach3,
  }) = _ReportRequest;
}

@freezed
class ReportRequestToFirebase with _$ReportRequestToFirebase {
  factory ReportRequestToFirebase({
    required String content,
    String? attach1,
    String? attach2,
    String? attach3,
  }) = _ReportRequestToFirebase;

  factory ReportRequestToFirebase.fromJson(Map<String, dynamic> json) =>
      _$ReportRequestToFirebaseFromJson(json);
}
