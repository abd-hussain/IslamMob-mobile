import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/model/quran_copy.dart';
import 'package:islam_app/domain/model/quran_prints.dart';
import 'package:islam_app/presentation/inboarding/bloc/quran_copy/quran_copy_bloc.dart';
import 'package:islam_app/presentation/quran_prints/widgets/download_progress_dialog.dart';
import 'package:islam_app/presentation/quran_prints/widgets/print_tile_view.dart';
import 'package:islam_app/presentation/quran_prints/widgets/quran_print_list_shimmer.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/custom_toast.dart';
import 'package:islam_app/shared_widgets/no_internet_view.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuranCopyView extends StatelessWidget {
  final Function(QuranCopy? copy) onSelect;

  const QuranCopyView({super.key, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuranCopyBloc(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<QuranCopyBloc, QuranCopyState>(
          buildWhen: (previous, current) =>
              previous.listOfPrints != current.listOfPrints ||
              previous.internetConnectionStauts !=
                  current.internetConnectionStauts,
          builder: (context, state) {
            if (state.internetConnectionStauts == false) {
              return NoInternetView(
                retryCallback: () => context.read<QuranCopyBloc>().initialize(),
              );
            }

            if (state.listOfPrints == null) {
              return const QuranListPrintsShimmer();
            }

            return Column(
              children: [
                _buildHeader(context),
                Container(
                  height: 1,
                  color: const Color(0xffD9D9D9),
                ),
                Expanded(child: _buildPrintList(context, state)),
              ],
            );
          },
        ),
      ),
    );
  }

  /// Builds the header text widget
  Widget _buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          Expanded(
            child: CustomText(
              title: AppLocalizations.of(context)!.qurancopytitle,
              fontSize: 16,
              color: const Color(0xff444444),
              maxLines: 6,
              fontWeight: FontWeight.bold,
            ),
          ),
          OutlinedButton(
            onPressed: () => onSelect(null),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color(0xff007F37)),
            ),
            child: CustomText(
              title: AppLocalizations.of(context)!.skip,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: const Color(0xff007F37),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrintList(BuildContext context, QuranCopyState state) {
    return BlocBuilder<QuranCopyBloc, QuranCopyState>(
        buildWhen: (previous, current) =>
            previous.printsDownloading != current.printsDownloading,
        builder: (context, downloadState) {
          return ListView.builder(
            itemCount: state.listOfPrints!.length,
            itemBuilder: (context, index) {
              final printItem = state.listOfPrints![index];
              return PrintTileView(
                language: context.read<QuranCopyBloc>().getLanguageNameByCode(
                      printItem.language ?? "",
                    ),
                title: printItem.nameReferance,
                description: printItem.description,
                previewImage: printItem.previewImage,
                downloadButtonAvailable: !downloadState.printsDownloading
                    .contains(printItem.fieldName),
                useButtonAvailable: downloadState.printsDownloading
                    .contains(printItem.fieldName),
                onDownloadPressed: () =>
                    _handleDownloadPressed(context, printItem),
                onUsePressed: () => _handleUsePressed(context, printItem),
              );
            },
          );
        });
  }

  Future<void> _handleDownloadPressed(
      BuildContext context, QuranPrints printItem) async {
    final hasPermission =
        await context.read<QuranCopyBloc>().requestStoragePermission();

    if (hasPermission && context.mounted) {
      _showDownloadDialog(context, printItem);
    } else if (context.mounted) {
      _showPermissionWarning(context);
    }
  }

  void _showDownloadDialog(BuildContext context, QuranPrints printItem) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => DownloadProgressDialog(
        fileUrl: printItem.attachmentLocation!,
        fileNameWithExtension: printItem.fieldName!,
        filePathCallback: (_) {
          FirebaseAnalytics.instance.logEvent(
            name: "download_file",
            parameters: {"file": printItem.fieldName!},
          );
          _updateDownloadState(context, printItem);
        },
      ),
    );
  }

  void _updateDownloadState(BuildContext context, QuranPrints printItem) {
    final List<String> updatedList =
        List.from(context.read<QuranCopyBloc>().state.printsDownloading)
          ..add(printItem.fieldName!);

    context
        .read<QuranCopyBloc>()
        .add(QuranCopyEvent.updatePrintsDownloading(updatedList));
  }

  void _showPermissionWarning(BuildContext context) {
    CustomToast.showWarningToast(
      context: context,
      message: AppLocalizations.of(context)!.downloadnopermission,
    );
  }

  Future<void> _handleUsePressed(
      BuildContext context, QuranPrints printItem) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final filePath = Directory('${dir.path}/${printItem.fieldName!}');

    FirebaseAnalytics.instance.logEvent(
      name: "use_file",
      parameters: {"file": printItem.fieldName!},
    );

    final copy = QuranCopy(
      filePath: filePath.path,
      lastPageNumber: 1,
      juz2ToPageNumbers: printItem.juz2ToPageNumbers,
      sorahToPageNumbers: printItem.sorahToPageNumbers,
    );

    onSelect(copy);
  }
}
