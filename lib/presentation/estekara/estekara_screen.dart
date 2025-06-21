import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/estekara/bloc/estekara_bloc.dart';
import 'package:islam_app/presentation/estekara/widget/player_widget.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Screen for Istikhara (Islamic guidance prayer) functionality.
///
/// This screen provides Muslims with the complete Istikhara experience,
/// which is an important Islamic practice for seeking Allah's guidance
/// when making significant life decisions. It features:
/// - **Audio recitation** of the Istikhara prayer in Arabic
/// - **Prayer text display** in both Arabic and localized languages
/// - **Step-by-step instructions** for performing Istikhara correctly
/// - **Islamic guidance** on when and how to use Istikhara
///
/// Istikhara is a Sunnah prayer that Muslims perform when they need to
/// make important decisions and seek Allah's guidance. This screen provides
/// authentic Islamic content including the proper prayer (dua), instructions,
/// and guidance according to Islamic teachings and prophetic traditions.
class EstekaraScreen extends StatefulWidget {
  /// Creates an [EstekaraScreen] widget.
  ///
  /// This screen provides the complete Istikhara experience with audio
  /// recitation, prayer text, and guidance for Islamic decision-making.
  const EstekaraScreen({super.key});

  /// Creates the state for the Istikhara screen.
  ///
  /// Returns a [_EstekaraScreenState] instance that manages the screen's
  /// lifecycle, audio player, and Istikhara content display.
  @override
  State<EstekaraScreen> createState() => _EstekaraScreenState();
}

class _EstekaraScreenState extends State<EstekaraScreen> {
  late AudioPlayer player = AudioPlayer();

  @override
  void initState() {
    super.initState();

    // Create the audio player.
    player = AudioPlayer();

    // Set the release mode to keep the source after playback has completed.
    player.setReleaseMode(ReleaseMode.stop);

    // Start the player as soon as the app is displayed.
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await player.setSource(AssetSource('audios/istikhara.mp3'));
      await player.resume();
    });
  }

  @override
  void dispose() {
    // Release all sources and dispose the player.
    player.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);

    return Scaffold(
      backgroundColor: const Color(0xfffff2e9),
      appBar: AppBar(
        backgroundColor: const Color(0xff292929),
        iconTheme: const IconThemeData(color: Colors.white),
        title: CustomText(
          title: localizations.estekaraTitle,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: BlocProvider(
        create: (context) => EstekaraBloc()
          ..add(
            const EstekaraEvent.fillInitialValue(),
          ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/estekara_be.png", fit: BoxFit.cover),
              const SizedBox(height: 10),
              PlayerWidget(
                player: player,
                // isRtlLanguage: context.read<EstekaraBloc>().state.isRtlLanguage,
              ),
              const SizedBox(height: 10),
              BlocBuilder<EstekaraBloc, EstekaraState>(
                buildWhen: (previous, current) =>
                    previous.listOfItems != current.listOfItems,
                builder: (context, state) {
                  return ListView.builder(
                      itemCount: state.listOfItems.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: state.isRtlLanguage
                                      ? state.listOfItems[index].title.ar
                                      : state.listOfItems[index].title.en,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  maxLines: 2,
                                  color: const Color(0xff444444),
                                ),
                                const SizedBox(height: 5),
                                ListView.builder(
                                  itemBuilder: (context, detailIndex) {
                                    final details =
                                        state.listOfItems[index].details[
                                            state.isRtlLanguage ? 'ar' : 'en'];
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: CustomText(
                                        title: details?[detailIndex] ?? "",
                                        fontSize: 16,
                                        maxLines: 25,
                                        color: const Color(0xff666666),
                                      ),
                                    );
                                  },
                                  itemCount: state
                                          .listOfItems[index]
                                          .details[
                                              state.isRtlLanguage ? 'ar' : 'en']
                                          ?.length ??
                                      0,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
