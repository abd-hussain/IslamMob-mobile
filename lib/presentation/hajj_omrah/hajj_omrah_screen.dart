import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/constants/argument_constant.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/hajj_omrah/bloc/hajj_omrah_bloc.dart';
import 'package:islam_app/presentation/hajj_omrah/widgets/hajj_omrah_tile_view.dart';
import 'package:islam_app/presentation/hajj_omrah/widgets/youtube_live_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class HajjOmrahScreen extends StatelessWidget {
  const HajjOmrahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final String screenType =
        arguments[ArgumentConstant.hajjOmrahType] ?? "Hajj";
    final localizations = IslamMobLocalizations.of(context);

    return Scaffold(
      backgroundColor: const Color(0xfffff2e9),
      appBar: AppBar(
        backgroundColor: const Color(0xff292929),
        iconTheme: const IconThemeData(color: Colors.white),
        title: CustomText(
          title: screenType == "hajj"
              ? localizations.alhajjTitle
              : localizations.omrahTitle,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: BlocProvider(
        create: (context) => HajjOmrahBloc()
          ..add(HajjOmrahEvent.fillInitialValue(
            screenType == "hajj"
                ? const HajjOmrahScreenType.hajj()
                : const HajjOmrahScreenType.omrah(),
          )),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const YoutubeLiveView(),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.white,
                    child: CustomText(
                      title: screenType == "hajj"
                          ? localizations.hajjDescription
                          : localizations.omrahDescription,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      maxLines: 14,
                      color: const Color(0xff444444),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: BlocBuilder<HajjOmrahBloc, HajjOmrahState>(
                    buildWhen: (previous, current) =>
                        previous.listOfItems != current.listOfItems,
                    builder: (context, state) {
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          childAspectRatio:
                              1.4, // Adjust aspect ratio as needed
                        ),
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return HajjOmrahTileView(
                            data: state.listOfItems[index],
                            isRtlLanguage: state.isRtlLanguage,
                          );
                        },
                        shrinkWrap: true,
                        itemCount: state.listOfItems.length,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
