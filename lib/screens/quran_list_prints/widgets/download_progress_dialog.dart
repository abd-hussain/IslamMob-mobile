import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/utils/download_file.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  double progress = 0.0;

  @override
  void initState() {
    _startDownload();
    super.initState();
  }

  void _startDownload() {
    FileDownload().startDownloading(
        context: context,
        fileUrl: widget.fileUrl,
        fileNameWithExtension: widget.fileNameWithExtension,
        progressCallback: (recivedBytes, totalBytes) {
          setState(() {
            progress = recivedBytes / totalBytes;
          });
        },
        finishCallback: (path) {
          widget.filePathCallback(path);
        });
  }

  @override
  Widget build(BuildContext context) {
    String downloadingProgress = (progress * 100).toInt().toString();

    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)!.downloading,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey,
            color: Colors.green,
            minHeight: 16,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "$downloadingProgress %",
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              AppLocalizations.of(context)!.downloadpopupmessage,
              maxLines: 3,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomButton(
            enableButton: true,
            buttonTitle: AppLocalizations.of(context)!.cancel,
            buttonColor: Colors.red,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
