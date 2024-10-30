import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/models/rest_api/quran_prints.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/quran_list_prints/bloc/quran_list_prints_bloc.dart';
import 'package:islam_app/screens/quran_list_prints/widgets/copy_tile.dart';
import 'package:islam_app/screens/quran_list_prints/widgets/download_progress_dialog.dart';
import 'package:islam_app/screens/quran_list_prints/widgets/shimmer_print_list.dart';
import 'package:islam_app/shared_widgets/custom_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_toast.dart';
import 'package:islam_app/utils/constants/argument_constant.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:path_provider/path_provider.dart';

class QuranListPrintsScreen extends StatefulWidget {
  const QuranListPrintsScreen({super.key});

  @override
  State<QuranListPrintsScreen> createState() => _QuranListPrintsScreenState();
}

class _QuranListPrintsScreenState extends State<QuranListPrintsScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDetailsPage = _handleReadingArguments(arguments: ModalRoute.of(context)!.settings.arguments) ?? false;
    return BlocProvider(
      create: (context) => QuranListPrintsBloc(),
      child: Scaffold(
        appBar: CustomAppBar(title: AppLocalizations.of(context)!.quranprints),
        body: BlocBuilder<QuranListPrintsBloc, QuranListPrintsState>(
          buildWhen: (previous, current) => previous.listOfPrints != current.listOfPrints,
          builder: (context, state) {
            return state.listOfPrints == null
                ? const QuranListPrintsShimmer()
                : ListView.builder(
                    itemCount: state.listOfPrints!.length,
                    itemBuilder: (context, index) {
                      final printItem = state.listOfPrints![index];
                      return _buildPrintTile(context, printItem, isDetailsPage);
                    },
                  );
          },
        ),
      ),
    );
  }

  Widget _buildPrintTile(BuildContext context, QuranPrints printItem, bool isDetailsPage) {
    return FutureBuilder<bool>(
      initialData: false,
      future: context.read<QuranListPrintsBloc>().verifyIfFileExists(printItem.fieldName!),
      builder: (context, snapshot) {
        final fileExists = snapshot.data ?? false;
        return MushafCopyTile(
          previewImage: printItem.previewImage,
          title: printItem.nameReferance,
          description: printItem.description,
          language: context.read<QuranListPrintsBloc>().getNameByLanguageCode(printItem.language ?? ""),
          downloadButtonAvaliable: !fileExists,
          useButtonAvaliable: fileExists,
          onDownloadPressed: () => _handleDownloadPressed(context, printItem),
          onUsePressed: () => _handleUsePressed(context, printItem, isDetailsPage),
        );
      },
    );
  }

  Future<void> _handleDownloadPressed(BuildContext context, QuranPrints printItem) async {
    final permissionGranted = await context.read<QuranListPrintsBloc>().permissionRequest();
    if (permissionGranted && context.mounted) {
      showDialog(
        context: context,
        builder: (_) => DownloadProgressDialog(
          fileUrl: printItem.attachmentLocation!,
          fileNameWithExtension: printItem.fieldName!,
          filePathCallback: (_) => setState(() {}),
        ),
      );
    } else if (context.mounted) {
      CustomToast.showWarningToast(
        context: context,
        message: AppLocalizations.of(context)!.downloadnopermission,
      );
    }
  }

  Future<void> _handleUsePressed(BuildContext context, QuranPrints printItem, bool isDetailsPage) async {
    final Directory dir = await getApplicationDocumentsDirectory();
    final filePath = Directory('${dir.path}/${printItem.fieldName!}');
    final box = Hive.box(DatabaseBoxConstant.userInfo);

    await box.put(DatabaseFieldConstant.quranKaremPrintNameToUse, filePath.path);
    await box.put(DatabaseFieldConstant.quranKaremLastPageNumber, 1);
    await box.put(DatabaseFieldConstant.quranKaremJuz2ToPageNumbers, printItem.juz2ToPageNumbers);
    await box.put(DatabaseFieldConstant.quranKaremSorahToPageNumbers, printItem.sorahToPageNumbers);

    if (context.mounted) {
      if (isDetailsPage) {
        Navigator.pop(context, {"use": printItem.fieldName ?? ""});
      } else {
        await Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil(
          RoutesConstants.mainContainer,
          (route) => false,
        );
      }
    }
  }

  bool? _handleReadingArguments({required Object? arguments}) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    return arguments?[ArgumentConstant.isDetailsPage] as bool?;
  }
}
