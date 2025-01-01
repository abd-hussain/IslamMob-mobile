import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/domain/model/quran_prints.dart';
import 'package:islam_app/domain/usecase/log_event_usecase.dart';
import 'package:islam_app/presentation/quran_prints/bloc/quran_prints_bloc.dart';
import 'package:islam_app/presentation/quran_prints/widgets/download_progress_dialog.dart';
import 'package:islam_app/presentation/quran_prints/widgets/print_tile_view.dart';
import 'package:islam_app/presentation/quran_prints/widgets/quran_print_list_shimmer.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/custom_toast.dart';
import 'package:islam_app/shared_widgets/no_internet_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/core/constants/database_constant.dart';
import 'package:path_provider/path_provider.dart';

class QuranPrintsScreen extends StatelessWidget {
  const QuranPrintsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuranPrintsBloc()
        ..add(
          QuranPrintsEvent.initializeFetchingData(),
        ),
      child: Scaffold(
        appBar: CustomAppBar(title: AppLocalizations.of(context)!.quranprints),
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<QuranPrintsBloc, QuranPrintsState>(
      builder: (context, state) {
        if (state.internetConnectionStauts == false) {
          return NoInternetView(
            retryCallback: () => context.read<QuranPrintsBloc>().add(
                  QuranPrintsEvent.initializeFetchingData(),
                ),
          );
        } else if (state.listOfPrints == null) {
          return const QuranListPrintsShimmer();
        } else {
          return _buildPrintsList(context, state);
        }
      },
    );
  }

  Widget _buildPrintsList(BuildContext context, QuranPrintsState state) {
    return BlocBuilder<QuranPrintsBloc, QuranPrintsState>(
      buildWhen: (previous, current) =>
          previous.printsDownloading != current.printsDownloading,
      builder: (context, _) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: CustomText(
                title: AppLocalizations.of(context)!.qurancopytitle,
                fontSize: 16,
                color: const Color(0xff444444),
                maxLines: 6,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.listOfPrints!.length,
                itemBuilder: (context, index) {
                  final printItem = state.listOfPrints![index];
                  return _buildPrintTile(context, printItem, state);
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPrintTile(
      BuildContext context, QuranPrints printItem, QuranPrintsState state) {
    return PrintTileView(
      language: context
          .read<QuranPrintsBloc>()
          .getNameByLanguageCode(printItem.language ?? ""),
      title: printItem.nameReferance,
      description: printItem.description,
      previewImage: printItem.previewImage,
      downloadButtonAvailable:
          !state.printsDownloading.contains(printItem.fieldName),
      useButtonAvailable: state.printsDownloading.contains(printItem.fieldName),
      onDownloadPressed: () => _handleDownloadPressed(context, printItem),
      onUsePressed: () => _handleUsePressed(context, printItem),
    );
  }

  Future<void> _handleDownloadPressed(
      BuildContext context, QuranPrints printItem) async {
    final permissionGranted =
        await context.read<QuranPrintsBloc>().permissionRequest();
    if (permissionGranted && context.mounted) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) => DownloadProgressDialog(
          fileUrl: printItem.attachmentLocation!,
          fileNameWithExtension: printItem.fieldName!,
          filePathCallback: (_) => _onFileDownloaded(context, printItem),
        ),
      );
    } else if (context.mounted) {
      CustomToast.showWarningToast(
        context: context,
        message: AppLocalizations.of(context)!.downloadnopermission,
      );
    }
  }

  void _onFileDownloaded(BuildContext context, QuranPrints printItem) {
    LogEventUsecase.logEvent(
      name: "download_file",
      parameters: {"file": printItem.fieldName ?? ""},
    );

    final updatedList = List<String>.from(
        context.read<QuranPrintsBloc>().state.printsDownloading)
      ..add(printItem.fieldName!);

    context
        .read<QuranPrintsBloc>()
        .add(QuranPrintsEvent.updatePrintsDownloading(print: updatedList));
  }

  Future<void> _handleUsePressed(
      BuildContext context, QuranPrints printItem) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final filePath = Directory('${dir.path}/${printItem.fieldName!}');
    final box = Hive.box(DatabaseBoxConstant.userInfo);

    await box.put(
        DatabaseFieldQuranCopyConstant.quranKaremPrintNameToUse, filePath.path);
    await box.put(DatabaseFieldQuranCopyConstant.quranKaremLastPageNumber, 1);
    await box.put(DatabaseFieldQuranCopyConstant.quranKaremJuz2ToPageNumbers,
        printItem.juz2ToPageNumbers);
    await box.put(DatabaseFieldQuranCopyConstant.quranKaremSorahToPageNumbers,
        printItem.sorahToPageNumbers);

    LogEventUsecase.logEvent(
      name: "use_file",
      parameters: {"file": printItem.fieldName ?? ""},
    );

    if (context.mounted) {
      Navigator.pop(context, true);
    }
  }
}
