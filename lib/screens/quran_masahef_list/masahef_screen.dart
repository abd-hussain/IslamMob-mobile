import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/quran_masahef_list/bloc/masahef_bloc.dart';
import 'package:islam_app/screens/quran_masahef_list/widgets/copy_tile.dart';
import 'package:islam_app/screens/quran_masahef_list/widgets/download_progress_dialog.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:islam_app/utils/logger.dart';

class MasaheefScreen extends StatefulWidget {
  const MasaheefScreen({super.key});

  @override
  State<MasaheefScreen> createState() => _MasaheefScreenState();
}

class _MasaheefScreenState extends State<MasaheefScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MasahefBloc(),
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
        body: BlocBuilder<MasahefBloc, MasahefState>(
          buildWhen: (previous, current) {
            return previous.listOfPrints != current.listOfPrints;
          },
          builder: (context, state) {
            return state.listOfPrints == null
                ? const SizedBox(
                    child: Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xff292929),
                        ),
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: state.listOfPrints!.length,
                    itemBuilder: (context, index) {
                      return FutureBuilder<bool>(
                          initialData: false,
                          future: context
                              .read<MasahefBloc>()
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
                                  .read<MasahefBloc>()
                                  .getNameByLanguageCode(
                                      state.listOfPrints![index].language ??
                                          ""),
                              downloadButtonAvaliable: !fileExists,
                              useButtonAvaliable: fileExists,
                              onDownloadPressed: () async {
                                bool result = await context
                                    .read<MasahefBloc>()
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
                                          "No permission to read and write.");
                                }
                              },
                              onUsePressed: () {
                                context.read<MasahefBloc>().box.put(
                                    DatabaseFieldConstant
                                        .quranKaremPrintNameToUse,
                                    state.listOfPrints![index].fieldName!);
                                Navigator.pop(context, {
                                  "use": state.listOfPrints![index].fieldName!
                                });
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
