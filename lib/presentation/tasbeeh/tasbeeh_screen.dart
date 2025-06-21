import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/tasbeeh/bloc/tasbeeh_bloc.dart';
import 'package:islam_app/presentation/tasbeeh/widgets/tasbeeh_text_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/electric_counter/electric_counter_view.dart';

/// Screen for digital Tasbeeh (Islamic prayer beads) functionality.
///
/// This screen provides Muslims with a digital alternative to traditional
/// prayer beads for counting Islamic dhikr (remembrance of Allah). It offers:
/// - **Digital counter** for tracking dhikr repetitions
/// - **Multiple dhikr options** including SubhanAllah, Alhamdulillah, Allahu Akbar
/// - **Audio and vibration feedback** for enhanced spiritual experience
/// - **Progress tracking** with visual indicators and completion status
/// - **Navigation between different dhikr** for comprehensive remembrance sessions
///
/// The Tasbeeh is an important Islamic practice for:
/// - Daily dhikr and remembrance of Allah
/// - Post-prayer spiritual practices
/// - Meditation and spiritual reflection
/// - Maintaining connection with Islamic teachings
///
/// This digital implementation helps Muslims maintain their spiritual practices
/// conveniently while preserving the traditional counting methodology.
class TasbeehScreen extends StatefulWidget {
  /// Creates a [TasbeehScreen] widget.
  ///
  /// This screen provides comprehensive digital Tasbeeh functionality
  /// with counter, audio feedback, and multiple dhikr options for
  /// Islamic spiritual practices.
  const TasbeehScreen({super.key});

  /// Creates the state for the Tasbeeh screen.
  ///
  /// Returns a [_TasbeehScreenState] instance that manages the screen's
  /// lifecycle and user interactions for the digital prayer beads functionality.
  @override
  State<TasbeehScreen> createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {
  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);

    return Scaffold(
      backgroundColor: const Color(0xfffff2e9),
      appBar: AppBar(
        backgroundColor: const Color(0xff292929),
        iconTheme: const IconThemeData(color: Colors.white),
        title: CustomText(
          title: localizations.tasbeeh,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: BlocProvider(
        create: (context) =>
            TasbeehBloc()..add(const TasbeehEvent.fillInitialValue()),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<TasbeehBloc, TasbeehState>(
                  builder: (context, state) {
                    if (state.list.isEmpty) {
                      return _buildLoadingIndicator();
                    }

                    final tasbeehItem = state.list[state.selectedListIndex];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TasbeehTextView(
                            tasbeehItem: tasbeehItem,
                          ),
                        ),
                        ElectricCounterView(
                          currentCount: tasbeehItem.currentCount,
                          maxCount: tasbeehItem.maxCount,
                          width: MediaQuery.of(context).size.width,
                          showResetHintText: true,
                          isPreviosSelected: true,
                          isNextSelected: true,
                          isVibrationSelected: state.allowVibration,
                          isSoundSelected: state.allowSound,
                          onPreviosSelected: () => context
                              .read<TasbeehBloc>()
                              .add(const TasbeehEvent.leftZikerSelected()),
                          onNextSelected: () => context
                              .read<TasbeehBloc>()
                              .add(const TasbeehEvent.rightZikerEnabled()),
                          onVibrationSelected: () => context
                              .read<TasbeehBloc>()
                              .add(const TasbeehEvent.vibrationSetting()),
                          onSoundSelected: () => context
                              .read<TasbeehBloc>()
                              .add(const TasbeehEvent.soundSetting()),
                          onIncreaseCounter: () => context
                              .read<TasbeehBloc>()
                              .add(TasbeehEvent.incrementCounter(tasbeehItem)),
                          onResetCounter: () => context
                              .read<TasbeehBloc>()
                              .add(TasbeehEvent.resetCounter(tasbeehItem)),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 60,
                child: AddMobBanner(verticalPadding: 0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Displays a loading indicator when the list is empty.
  Widget _buildLoadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Color(0xff292929)),
      ),
    );
  }
}
