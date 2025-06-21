import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:islam_app/domain/model/report_request.dart';

/// Use case for handling user reports and suggestions for the Islam Mob app.
///
/// This class provides functionality for users to submit feedback, bug reports,
/// feature suggestions, and other communications to the development team. It supports:
/// - **Bug reporting** for technical issues and app malfunctions
/// - **Feature suggestions** for Islamic functionality improvements
/// - **Content feedback** regarding Islamic accuracy and authenticity
/// - **User experience reports** for app usability and accessibility
/// - **File attachments** for screenshots, logs, and supporting documentation
///
/// The reporting system is essential for maintaining the quality and Islamic
/// authenticity of the app, allowing the Muslim community to contribute to
/// improvements and ensure the app serves their religious needs effectively.
///
/// Reports are sent via email to the development team with proper categorization
/// and attachment support for comprehensive issue documentation.
class ReportUseCase {
  /// Submits a new report or suggestion to the development team.
  ///
  /// This method processes user feedback and sends it via email to the
  /// development team with any attached files. It handles:
  /// - Text content formatting and submission
  /// - Multiple file attachments (up to 3 files)
  /// - Email composition with proper recipients
  /// - Attachment path processing for file inclusion
  ///
  /// The method supports various types of reports:
  /// - Bug reports with screenshots and logs
  /// - Feature suggestions for Islamic functionality
  /// - Content accuracy feedback for religious authenticity
  /// - User experience improvements
  /// - Technical support requests
  ///
  /// Parameters:
  /// - [reportData]: A [ReportRequest] object containing the report content
  ///   and optional file attachments
  ///
  /// The email is sent to the development team with the subject line
  /// "IslamMob Report or Suggestion" for proper categorization.
  ///
  /// Example:
  /// ```dart
  /// final report = ReportRequest(
  ///   content: 'Prayer times seem incorrect for my location...',
  ///   attach1: File('/path/to/screenshot.png'),
  /// );
  /// await ReportUseCase().addNewReportOrSuggestion(reportData: report);
  /// ```
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
