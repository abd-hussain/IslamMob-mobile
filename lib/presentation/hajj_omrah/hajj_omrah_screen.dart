import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/constants/argument_constant.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/hajj_omrah/bloc/hajj_omrah_bloc.dart';
import 'package:islam_app/presentation/hajj_omrah/widgets/hajj_omrah_tile_view.dart';
import 'package:islam_app/presentation/hajj_omrah/widgets/youtube_live_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Screen for Hajj and Omrah pilgrimage guidance and information.
///
/// This screen provides Muslims with comprehensive guidance for performing
/// Hajj (the major pilgrimage) and Omrah (the minor pilgrimage), which are
/// among the most important religious obligations in Islam. It features:
/// - **Live video content** from Mecca for real-time pilgrimage viewing
/// - **Detailed guidance** with step-by-step pilgrimage instructions
/// - **Educational content** organized in accessible tile format
/// - **Multilingual support** for global Muslim community access
///
/// The screen adapts its content based on the pilgrimage type (Hajj or Omrah),
/// providing specific guidance, rituals, and spiritual preparation information
/// according to Islamic teachings and Sunnah practices. This helps Muslims
/// prepare for and understand these sacred journeys to the holy cities of
/// Mecca and Medina.
class HajjOmrahScreen extends StatelessWidget {
  /// Creates a [HajjOmrahScreen] widget.
  ///
  /// This screen displays comprehensive Hajj or Omrah guidance based on
  /// the screen type parameter passed through navigation arguments.
  const HajjOmrahScreen({super.key});

  /// Builds the Hajj/Omrah guidance screen with educational content.
  ///
  /// This method constructs the pilgrimage guidance interface featuring:
  /// - Dynamic title based on pilgrimage type (Hajj or Omrah)
  /// - Live video content from Mecca for spiritual connection
  /// - Descriptive text explaining the pilgrimage significance
  /// - Grid layout of educational tiles with guidance content
  /// - BLoC integration for state management and content loading
  ///
  /// The screen automatically adapts its content and language based on
  /// the pilgrimage type and user's language preferences.
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final String screenType =
        (arguments[ArgumentConstant.hajjOmrahType] as String?) ?? "Hajj";
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
