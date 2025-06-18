import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:islam_app/domain/model/report_request.dart';

class ReportUseCase {
  Future<void> addNewReportOrSuggestion(
      {required ReportRequest reportData}) async {
    final List<String> attachmentPaths = [];

    if (reportData.attach1 != null) {
      attachmentPaths.add(reportData.attach1!.path);
    }

    if (reportData.attach2 != null) {
      attachmentPaths.add(reportData.attach2!.path);
    }

    if (reportData.attach3 != null) {
      attachmentPaths.add(reportData.attach3!.path);
    }

    final Email email = Email(
      body: reportData.content,
      subject: 'IslamMob Report or Suggestion',
      recipients: ['abd.alhaj.hussain@gmail.com'],
      cc: ['aboud.masoud.92@gmail.com'],
      attachmentPaths: attachmentPaths,
    );

    await FlutterEmailSender.send(email);
  }
}
