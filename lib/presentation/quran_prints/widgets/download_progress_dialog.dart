import 'package:dio/dio.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/download_file_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';

class DownloadProgressDialog extends StatefulWidget {
  final String fileUrl;
  final String fileNameWithExtension;
  final Function(String) filePathCallback;
  const DownloadProgressDialog({
    super.key,
    required this.fileUrl,
    required this.fileNameWithExtension,
    required this.filePathCallback,
  });

  @override
  State<DownloadProgressDialog> createState() => _DownloadProgressDialogState();
}

class _DownloadProgressDialogState extends State<DownloadProgressDialog> {
  double progress = 0;
  late CancelToken cancelToken;

  @override
  void initState() {
    super.initState();
    cancelToken = CancelToken();
    _startDownload();
  }

  @override
  void dispose() {
    if (!cancelToken.isCancelled) {
      cancelToken.cancel(); // Ensure download is canceled if widget is disposed
    }
    super.dispose();
  }

  void _startDownload() {
    final DownloadFileUsecase downloadFileUsecase =
        locator<DownloadFileUsecase>();

    downloadFileUsecase.startDownloading(
      fileUrl: widget.fileUrl,
      fileNameWithExtension: widget.fileNameWithExtension,
      progressCallback: (receivedBytes, totalBytes) {
        if (mounted) {
          setState(() {
            progress = receivedBytes / totalBytes;
          });
        }
      },
      finishCallback: (path) {
        if (mounted) {
          widget.filePathCallback(path);
          Navigator.pop(context);
        }
      },
      cancelToken:
          cancelToken, // Pass the cancel token to manage download cancellation
    );
  }

  @override
  Widget build(BuildContext context) {
    final String downloadingProgress = (progress * 100).toInt().toString();
    final localize = IslamMobLocalizations.of(context);

    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context, localize),
          _buildProgressIndicator(),
          _buildProgressText(downloadingProgress),
          _buildInfoMessage(context, localize),
          _buildCancelButton(context, localize),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, IslamMobLocalizations localize) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      child: Text(
        localize.downloading,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return LinearProgressIndicator(
      value: progress,
      backgroundColor: Colors.grey,
      color: Colors.green,
      minHeight: 10,
    );
  }

  Widget _buildProgressText(String progressText) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.bottomCenter,
      child: Text(
        "$progressText %",
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildInfoMessage(
      BuildContext context, IslamMobLocalizations localize) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        localize.downloadpopupmessage,
        maxLines: 3,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildCancelButton(
      BuildContext context, IslamMobLocalizations localize) {
    return CustomButton(
      isEnabled: true,
      title: localize.cancel,
      color: Colors.redAccent,
      onTap: () {
        FirebaseAnalyticsRepository.logEvent(
            name: "QuranPrintsScreenCancelButton");
        cancelToken.cancel(); // Cancel the download when pressing Cancel
        Navigator.of(context).pop();
      },
    );
  }
}
