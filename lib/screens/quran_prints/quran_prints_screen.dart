import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/models/rest_api/quran_prints.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/quran_prints/bloc/quran_prints_bloc.dart';
import 'package:islam_app/screens/quran_prints/widgets/download_progress_dialog.dart';
import 'package:islam_app/screens/quran_prints/widgets/print_tile_view.dart';
import 'package:islam_app/screens/quran_prints/widgets/quran_print_list_shimmer.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_toast.dart';
import 'package:islam_app/shared_widgets/no_internet_view.dart';
import 'package:islam_app/utils/constants/argument_constant.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:path_provider/path_provider.dart';

class QuranPrintsScreen extends StatelessWidget {
  const QuranPrintsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDetailsPage = _handleReadingArguments(
            context: context,
            arguments: ModalRoute.of(context)!.settings.arguments) ??
        false;

    return BlocProvider(
      create: (context) => QuranPrintsBloc(),
      child: Scaffold(
        appBar: CustomAppBar(title: AppLocalizations.of(context)!.quranprints),
        body: BlocBuilder<QuranPrintsBloc, QuranPrintsState>(
          buildWhen: (previous, current) =>
              previous.listOfPrints != current.listOfPrints ||
              previous.internetConnectionStauts !=
                  current.internetConnectionStauts,
          builder: (context, state) {
            if (state.internetConnectionStauts == false) {
              return NoInternetView(
                retryCallback: () => context.read<QuranPrintsBloc>().initial(),
              );
            }

            if (state.listOfPrints == null) {
              return const QuranListPrintsShimmer();
            } else {
              return BlocBuilder<QuranPrintsBloc, QuranPrintsState>(
                buildWhen: (previous, current) =>
                    previous.printsDownloading != current.printsDownloading,
                builder: (context, state) {
                  return ListView.builder(
                    itemCount: state.listOfPrints!.length,
                    itemBuilder: (context, index) {
                      final printItem = state.listOfPrints![index];
                      return PrintTileView(
                        language: context
                            .read<QuranPrintsBloc>()
                            .getNameByLanguageCode(printItem.language ?? ""),
                        title: printItem.nameReferance,
                        description: printItem.description,
                        previewImage: printItem.previewImage,
                        downloadButtonAvaliable: !state.printsDownloading
                            .contains(printItem.fieldName),
                        useButtonAvaliable: state.printsDownloading
                            .contains(printItem.fieldName),
                        onDownloadPressed: () =>
                            _handleDownloadPressed(context, printItem),
                        onUsePressed: () => _handleUsePressed(
                            context, printItem, isDetailsPage),
                      );
                    },
                  );
                },
              );
            }
          },
        ),
      ),
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
          filePathCallback: (_) {
            FirebaseAnalytics.instance.logEvent(
              name: "download file ",
              parameters: {
                "file": printItem.fieldName!,
              },
            );
            final List<String> updatedList = List.from(
                context.read<QuranPrintsBloc>().state.printsDownloading);
            updatedList.add(printItem.fieldName!);

            // Dispatch the event with the updated list
            context
                .read<QuranPrintsBloc>()
                .add(QuranPrintsEvent.updatePrintsDownloading(updatedList));
          },
        ),
      );
    } else if (context.mounted) {
      CustomToast.showWarningToast(
        context: context,
        message: AppLocalizations.of(context)!.downloadnopermission,
      );
    }
  }

  Future<void> _handleUsePressed(
      BuildContext context, QuranPrints printItem, bool isDetailsPage) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final filePath = Directory('${dir.path}/${printItem.fieldName!}');
    final box = Hive.box(DatabaseBoxConstant.userInfo);
    await box.put(
        DatabaseFieldConstant.quranKaremPrintNameToUse, filePath.path);
    await box.put(DatabaseFieldConstant.quranKaremLastPageNumber, 1);
    await box.put(DatabaseFieldConstant.quranKaremJuz2ToPageNumbers,
        printItem.juz2ToPageNumbers);
    await box.put(DatabaseFieldConstant.quranKaremSorahToPageNumbers,
        printItem.sorahToPageNumbers);

    FirebaseAnalytics.instance.logEvent(
      name: "use file ",
      parameters: {
        "file": printItem.fieldName!,
      },
    );

    if (context.mounted) {
      if (isDetailsPage) {
        Navigator.pop(context);
      } else {
        await Navigator.of(context, rootNavigator: true)
            .pushNamedAndRemoveUntil(
          RoutesConstants.mainContainer,
          (route) => false,
        );
      }
    }
  }

  bool? _handleReadingArguments(
      {required BuildContext context, required Object? arguments}) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    return arguments?[ArgumentConstant.isDetailsPage] as bool?;
  }
}