import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/quran_kareem_tab/bloc/quran_kareem_bloc.dart';
import 'package:islam_app/utils/constants/database_constant.dart';
import 'package:pdfx/pdfx.dart';

class QuranKareemMainView extends StatelessWidget {
  const QuranKareemMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final bool status = context.read<QuranKareemBloc>().state.showHelpBar;
        context
            .read<QuranKareemBloc>()
            .add(QuranKareemEvent.showHideHelpBar(!status));
      },
      child: Stack(
        children: [
          BlocBuilder<QuranKareemBloc, QuranKareemState>(
            buildWhen: (previous, current) {
              return previous.sourceFileOfPDF != current.sourceFileOfPDF;
            },
            builder: (context, state) {
              print("ahaaaa");

              if (state.sourceFileOfPDF == "") {
                return PdfView(
                  reverse: context
                          .read<QuranKareemBloc>()
                          .box
                          .get(DatabaseFieldConstant.selectedLanguage) !=
                      "ar",
                  controller: context.read<QuranKareemBloc>().pageController(),
                  onPageChanged: (index) {
                    context
                        .read<QuranKareemBloc>()
                        .add(QuranKareemEvent.updatePageCount(index));
                  },
                );
              } else {
                print("ahaaaa else");

                return FutureBuilder(
                    future: context.read<QuranKareemBloc>().newPageController(),
                    builder: (context, file) {
                      if (file.data == null) {
                        print("ahaaaa loading");

                        return const Center(child: CircularProgressIndicator());
                      }

                      print("ahaaaa ssss");

                      return PdfView(
                        reverse: context
                                .read<QuranKareemBloc>()
                                .box
                                .get(DatabaseFieldConstant.selectedLanguage) !=
                            "ar",
                        controller: file.data!,
                        onPageChanged: (index) {
                          context
                              .read<QuranKareemBloc>()
                              .add(QuranKareemEvent.updatePageCount(index));
                        },
                      );
                    });
              }
            },
          ),
          BlocBuilder<QuranKareemBloc, QuranKareemState>(
            buildWhen: (previous, current) {
              return previous.brigtness != current.brigtness;
            },
            builder: (context, state) {
              return IgnorePointer(
                ignoring: true,
                child: Container(
                  color: Colors.black.withOpacity(state.brigtness),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
