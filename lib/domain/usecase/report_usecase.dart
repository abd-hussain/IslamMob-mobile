import 'dart:io';

import 'package:firebase_manager/firebase_manager.dart';
import 'package:islam_app/domain/model/report_request.dart';
import 'package:islam_app/my_app/locator.dart';

class ReportUseCase {
  Future<void> addNewReportOrSuggestion(
      {required ReportRequest reportData}) async {
    final attachments = await _uploadAttachments([
      reportData.attach1,
      reportData.attach2,
      reportData.attach3,
    ]);

    final report = ReportRequestToFirebase(
      content: reportData.content,
      attach1: attachments[0],
      attach2: attachments[1],
      attach3: attachments[2],
    );

    await FirebaseFirestoreRepository.setData(
        options: FireStoreOptions<ReportRequestToFirebase>(
      collectionName: FirebaseCollectionConstants.reports,
      docName: _generateDocumentName(),
      fromModel: report.toJson(),
    ));
  }

  /// Uploads a list of attachments and returns their corresponding URLs.
  Future<List<String?>> _uploadAttachments(List<File?> attachments) async {
    return Future.wait(
      attachments.map((attach) => _uploadFileIfNotNull(attach)),
    );
  }

  /// Uploads a single file if it is not null and returns its URL.
  Future<String?> _uploadFileIfNotNull(dynamic attach) async {
    if (attach == null) return null;

    final String extension = _getFileExtension(attach.path);
    final String fileName = _generateFileName(extension);

    return await locator<FirebaseFirestoreRepository>().uploadFile(
      file: attach,
      fileName: fileName,
    );
  }

  /// Extracts the file extension from a file path.
  String _getFileExtension(String filePath) {
    return filePath.split('.').last;
  }

  /// Generates a unique file name using the current timestamp and file extension.
  String _generateFileName(String extension) {
    return '${DateTime.now().toIso8601String()}.$extension';
  }

  /// Generates a unique document name based on the current timestamp.
  String _generateDocumentName() {
    return DateTime.now().toIso8601String();
  }
}
