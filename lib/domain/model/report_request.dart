import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_request.freezed.dart';

@freezed
class ReportRequest with _$ReportRequest {
  factory ReportRequest({
    required String content,
    File? attach1,
    File? attach2,
    File? attach3,
  }) = _ReportRequest;
}
