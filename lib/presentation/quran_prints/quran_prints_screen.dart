import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/model/quran_copy.dart';
import 'package:islam_app/domain/model/quran_prints.dart';
import 'package:islam_app/domain/usecase/setup_user_setting_usecase.dart';
import 'package:islam_app/domain/usecase/storage_permission_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/quran_prints/bloc/quran_prints_bloc.dart';
import 'package:islam_app/presentation/quran_prints/widgets/download_progress_dialog.dart';
import 'package:islam_app/presentation/quran_prints/widgets/print_tile_view.dart';
import 'package:islam_app/presentation/quran_prints/widgets/quran_print_list_shimmer.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/custom_toast.dart';
import 'package:islam_app/shared_widgets/no_internet_view.dart';

/// A screen that displays available Quran print editions for download and selection.
///
/// This screen allows users to browse different Quran print editions (mushaf),
/// download them to their device, and select which edition to use for reading.
/// It handles internet connectivity checks, download progress, storage permissions,
/// and provides a list of available Quran prints with preview images and descriptions.
/// Users can download new prints and switch between different editions.
class QuranPrintsScreen extends StatelessWidget {
  /// Creates a [QuranPrintsScreen] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const QuranPrintsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAnalyticsRepository.logEvent(name: "QuranPrintsScreen");
    final localize = IslamMobLocalizations.of(context);

    return BlocProvider(
      create: (context) =>
          QuranPrintsBloc()..add(QuranPrintsEvent.initializeFetchingData()),
      child: Scaffold(
        appBar: CustomAppBar(title: localize.quranprints),
        body: _buildBody(context, localize),
      ),
    );
  }

  Widget _buildBody(BuildContext context, IslamMobLocalizations localize) {
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
          return _buildPrintsList(context, state, localize);
        }
      },
    );
  }

  Widget _buildPrintsList(
    BuildContext context,
    QuranPrintsState state,
    IslamMobLocalizations localize,
  ) {
    return BlocBuilder<QuranPrintsBloc, QuranPrintsState>(
      buildWhen: (previous, current) =>
          previous.printsDownloading != current.printsDownloading,
      builder: (context, _) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: CustomText(
                title: localize.qurancopytitle,
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
                  return _buildPrintTile(context, printItem, state, localize);
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildPrintTile(
    BuildContext context,
    QuranPrints printItem,
    QuranPrintsState state,
    IslamMobLocalizations localize,
  ) {
    return PrintTileView(
      language: context.read<QuranPrintsBloc>().getLanguageNameByCode(
        printItem.language ?? "",
      ),
      title: printItem.nameReferance,
      description: printItem.description,
      previewImage: printItem.previewImage,
      downloadButtonAvailable: !state.printsDownloading.contains(
        printItem.fieldName,
      ),
      useButtonAvailable: state.printsDownloading.contains(printItem.fieldName),
      onDownloadPressed: () =>
          _handleDownloadPressed(context, printItem, localize),
      onUsePressed: () => _handleUsePressed(context, printItem),
    );
  }

  Future<void> _handleDownloadPressed(
    BuildContext context,
    QuranPrints printItem,
    IslamMobLocalizations localize,
  ) async {
    final hasPermission =
        await StoragePermissionUseCase.requestStoragePermission();

    if (hasPermission && context.mounted) {
      await showDialog(
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
        message: localize.downloadnopermission,
      );
    }
  }

  void _onFileDownloaded(BuildContext context, QuranPrints printItem) {
    FirebaseAnalyticsRepository.logEvent(
      name: "download_file",
      parameters: {"file": printItem.fieldName ?? ""},
    );

    final updatedList = List<String>.from(
      context.read<QuranPrintsBloc>().state.printsDownloading,
    )..add(printItem.fieldName!);

    context.read<QuranPrintsBloc>().add(
      QuranPrintsEvent.updatePrintsDownloading(print: updatedList),
    );
  }

  Future<void> _handleUsePressed(
    BuildContext context,
    QuranPrints printItem,
  ) async {
    final String fileName = printItem.fieldName!;

    await SetupUserSettingUseCase.setQuranCopyInDB(
      QuranCopy(
        fileName: fileName,
        lastPageNumber: "1",
        juz2ToPageNumbers: printItem.juz2ToPageNumbers,
        sorahToPageNumbers: printItem.sorahToPageNumbers,
      ),
    );

    await FirebaseAnalyticsRepository.logEvent(
      name: "use_file",
      parameters: {"file": printItem.fieldName ?? ""},
    );

    if (context.mounted) {
      Navigator.pop(context, true);
    }
  }
}
