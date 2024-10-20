import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/quran_list_prints/bloc/quran_list_prints_bloc.dart';
import 'package:islam_app/screens/quran_list_prints/widgets/copy_tile.dart';
import 'package:islam_app/screens/quran_list_prints/widgets/download_progress_dialog.dart';
import 'package:islam_app/screens/quran_list_prints/widgets/shimmer_print_list.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_toast.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:islam_app/utils/logger.dart';

class QuranListPrintsScreen extends StatefulWidget {
  const QuranListPrintsScreen({super.key});

  @override
  State<QuranListPrintsScreen> createState() => _QuranListPrintsScreenState();
}

class _QuranListPrintsScreenState extends State<QuranListPrintsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuranListPrintsBloc(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff292929),
          iconTheme: const IconThemeData(color: Colors.white),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                title: AppLocalizations.of(context)!.quranprints,
                fontSize: 14,
              )
            ],
          ),
        ),
        body: BlocBuilder<QuranListPrintsBloc, QuranListPrintsState>(
          buildWhen: (previous, current) {
            return previous.listOfPrints != current.listOfPrints;
          },
          builder: (context, state) {
            return state.listOfPrints == null
                ? const QuranListPrintsShimmer()
                : ListView.builder(
                    itemCount: state.listOfPrints!.length,
                    itemBuilder: (context, index) {
                      return FutureBuilder<bool>(
                          initialData: false,
                          future: context
                              .read<QuranListPrintsBloc>()
                              .verifyIfFileExists(
                                  state.listOfPrints![index].fieldName!),
                          builder: (context, fileExsist) {
                            bool fileExists = fileExsist.data ?? false;

                            return MushafCopyTile(
                              previewImage:
                                  state.listOfPrints![index].previewImage,
                              title: state.listOfPrints![index].nameReferance,
                              description:
                                  state.listOfPrints![index].description,
                              language: context
                                  .read<QuranListPrintsBloc>()
                                  .getNameByLanguageCode(
                                      state.listOfPrints![index].language ??
                                          ""),
                              downloadButtonAvaliable: !fileExists,
                              useButtonAvaliable: fileExists,
                              onDownloadPressed: () async {
                                bool result = await context
                                    .read<QuranListPrintsBloc>()
                                    .permissionRequest();
                                if (result) {
                                  if (context.mounted) {
                                    showDialog(
                                        context: context,
                                        builder: (dialogcontext) {
                                          return DownloadProgressDialog(
                                              fileUrl: state
                                                  .listOfPrints![index]
                                                  .attachmentLocation!,
                                              fileNameWithExtension: state
                                                  .listOfPrints![index]
                                                  .fieldName!,
                                              filePathCallback: (path) {
                                                setState(() {});
                                              });
                                        });
                                  }
                                } else {
                                  logDebugMessage(
                                      message:
                                          "No permission to read and write");
                                  if (context.mounted) {
                                    CustomToast.showWarningToast(
                                        context: context,
                                        message:
                                            "No permission to read and write");
                                  }
                                }
                              },
                              onUsePressed: () async {
                                await context
                                    .read<QuranListPrintsBloc>()
                                    .box
                                    .put(
                                        DatabaseFieldConstant
                                            .quranKaremPrintNameToUse,
                                        state.listOfPrints![index].fieldName!);
                                if (context.mounted) {
                                  Navigator.pop(context, {
                                    "use":
                                        state.listOfPrints![index].fieldName ??
                                            ""
                                  });
                                }
                              },
                            );
                          });
                    },
                  );
          },
        ),
      ),
    );
  }
}
