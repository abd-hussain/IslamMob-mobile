import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_request.freezed.dart';

/// A model representing a user report or feedback request.
///
/// This immutable data class encapsulates information needed to submit
/// user reports, bug reports, feedback, or support requests within the
/// Islam Mob app. It supports both textual content and file attachments
/// to provide comprehensive reporting capabilities.
///
/// The model includes:
/// - **Required textual content** describing the issue or feedback
/// - **Optional file attachments** for screenshots, logs, or supporting documents
/// - **Multiple attachment support** for comprehensive issue documentation
///
/// This is used in help and support features where users can report
/// issues, provide feedback, or request assistance with app functionality.
/// The attachment support allows users to include visual evidence or
/// additional context for their reports.
@freezed
abstract class ReportRequest with _$ReportRequest {
  /// Creates a [ReportRequest] instance for user reports and feedback.
  ///
  /// Parameters:
  /// - [content]: The main text content of the report or feedback (required)
  /// - [attach1]: Optional first file attachment (screenshot, document, etc.)
  /// - [attach2]: Optional second file attachment for additional context
  /// - [attach3]: Optional third file attachment for comprehensive documentation
  ///
  /// The [content] should contain a clear description of the issue, feedback,
  /// or request. The attachment files can include screenshots of issues,
  /// log files, or any other supporting documentation that helps understand
  /// and resolve the reported matter.
  ///
  /// Multiple attachments allow users to provide comprehensive documentation
  /// for complex issues that may require visual evidence or multiple
  /// supporting files.
  ///
  /// Example:
  /// ```dart
  /// final bugReport = ReportRequest(
  ///   content: 'Prayer times are showing incorrectly for my location...',
  ///   attach1: File('/path/to/screenshot.png'),
  ///   attach2: File('/path/to/settings_export.json'),
  ///   attach3: null,
  /// );
  /// ```
  factory ReportRequest({
    required String content,
    File? attach1,
    File? attach2,
    File? attach3,
  }) = _ReportRequest;
}
