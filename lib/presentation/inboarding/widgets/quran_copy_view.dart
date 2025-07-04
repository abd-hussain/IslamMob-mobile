import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/model/quran_prints.dart';
import 'package:islam_app/domain/usecase/storage_permission_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/inboarding/bloc/quran_copy/quran_copy_bloc.dart';
import 'package:islam_app/presentation/quran_prints/widgets/download_progress_dialog.dart';
import 'package:islam_app/presentation/quran_prints/widgets/print_tile_view.dart';
import 'package:islam_app/presentation/quran_prints/widgets/quran_print_list_shimmer.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/custom_toast.dart';
import 'package:islam_app/shared_widgets/no_internet_view.dart';

/// A widget that displays the Quran copy selection screen during onboarding.
///
/// This widget allows users to browse, download, and select different Quran
/// print copies (mushaf) during the app's initial setup. It handles internet
/// connectivity, displays available prints, manages downloads with progress
/// tracking, and provides a skip option for users who want to proceed without
/// selecting a copy.
class QuranCopyView extends StatelessWidget {
  /// Callback function called when the user completes copy selection or skips.
  ///
  /// This function is invoked either when the user selects and sets up a
  /// Quran copy, or when they choose to skip this step during onboarding.
  final Function() doneSelection;

  /// Creates a [QuranCopyView] widget.
  ///
  /// The [doneSelection] callback is required and will be called when
  /// the user either completes the Quran copy setup or skips this step.
  const QuranCopyView({super.key, required this.doneSelection});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          QuranCopyBloc()..add(QuranCopyEvent.getlistOfPrints()),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocBuilder<QuranCopyBloc, QuranCopyState>(
          buildWhen: (previous, current) =>
              previous.listOfPrints != current.listOfPrints ||
              previous.internetConnectionStauts !=
                  current.internetConnectionStauts,
          builder: (context, state) {
            if (state.internetConnectionStauts == false) {
              return NoInternetView(
                retryCallback: () => context.read<QuranCopyBloc>().add(
                  QuranCopyEvent.getlistOfPrints(),
                ),
              );
            }

            if (state.listOfPrints == null) {
              return const QuranListPrintsShimmer();
            }

            return Column(
              children: [
                _buildHeader(context),
                Container(height: 1, color: const Color(0xffD9D9D9)),
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
    final localization = IslamMobLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          Expanded(
            child: CustomText(
              title: localization.qurancopytitle,
              fontSize: 16,
              color: const Color(0xff444444),
              maxLines: 6,
              fontWeight: FontWeight.bold,
            ),
          ),
          OutlinedButton(
            onPressed: doneSelection,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color(0xff008480)),
            ),
            child: CustomText(
              title: localization.skip,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: const Color(0xff008480),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrintList(BuildContext context, QuranCopyState state) {
    return BlocBuilder<QuranCopyBloc, QuranCopyState>(
      buildWhen: (previous, current) =>
          previous.printsAlreadyDownloaded != current.printsAlreadyDownloaded,
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
              downloadButtonAvailable: !downloadState.printsAlreadyDownloaded
                  .contains(printItem.fieldName),
              useButtonAvailable: downloadState.printsAlreadyDownloaded
                  .contains(printItem.fieldName),
              onDownloadPressed: () =>
                  _handleDownloadPressed(context, printItem),
              onUsePressed: () => _handleUsePressed(context, printItem),
            );
          },
        );
      },
    );
  }

  Future<void> _handleDownloadPressed(
    BuildContext context,
    QuranPrints printItem,
  ) async {
    final hasPermission =
        await StoragePermissionUseCase.requestStoragePermission();

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
          FirebaseAnalyticsRepository.logEvent(
            name: "download_file",
            parameters: {"file": printItem.fieldName!},
          );
          _updateDownloadState(context, printItem);
        },
      ),
    );
  }

  void _updateDownloadState(BuildContext context, QuranPrints printItem) {
    final List<String> updatedList = List.from(
      context.read<QuranCopyBloc>().state.printsAlreadyDownloaded,
    )..add(printItem.fieldName!);

    context.read<QuranCopyBloc>().add(
      QuranCopyEvent.updatePrintsDownloading(updatedList),
    );
  }

  void _showPermissionWarning(BuildContext context) {
    CustomToast.showWarningToast(
      context: context,
      message: IslamMobLocalizations.of(context).downloadnopermission,
    );
  }

  Future<void> _handleUsePressed(
    BuildContext context,
    QuranPrints printItem,
  ) async {
    context.read<QuranCopyBloc>().add(
      QuranCopyEvent.setupCopy(printItem: printItem),
    );
    doneSelection();
  }
}
