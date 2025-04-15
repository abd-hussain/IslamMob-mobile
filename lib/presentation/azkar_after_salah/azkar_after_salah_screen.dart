import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:azkar/model/azkar_salah_time.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/constants/argument_constant.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/azkar_after_salah/bloc/azkar_after_salah_bloc.dart';
import 'package:islam_app/presentation/azkar_after_salah/widget/azkar_after_salah_text_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/electric_counter/electric_counter_view.dart';

class AzkarAfterSalahScreen extends StatelessWidget {
  const AzkarAfterSalahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final AzkarSalahTimeState salahTime =
        arguments[ArgumentConstant.salahTime] ??
            const AzkarSalahTimeState.fajir();

    FirebaseAnalyticsRepository.logEvent(name: "AzkarAfterSalahScreen");
    final localizations = IslamMobLocalizations.of(context);

    return Scaffold(
      backgroundColor: const Color(0xfffff2e9),
      appBar: AppBar(
        backgroundColor: const Color(0xff292929),
        iconTheme: const IconThemeData(color: Colors.white),
        title: CustomText(
          title: localizations.azkarAfterSalah +
              " " +
              _salahName(salahTime, localizations),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: BlocProvider(
        create: (context) => AzkarAfterSalahBloc()
          ..add(AzkarAfterSalahEvent.fillInitialValue(salahTime)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: BlocBuilder<AzkarAfterSalahBloc, AzkarAfterSalahState>(
                  builder: (context, state) {
                    if (state.list.isEmpty) {
                      return _buildLoadingIndicator();
                    }

                    final azkarItem = state.list[state.selectedListIndex];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: AzkarAfterSalahTextView(
                            azkarItem: azkarItem,
                          ),
                        ),
                        ElectricCounterView(
                          currentCount: azkarItem.currentCount,
                          maxCount: azkarItem.maxCount,
                          width: MediaQuery.of(context).size.width,
                          showResetHintText: false,
                          isPreviosSelected: true,
                          isNextSelected: true,
                          isVibrationSelected: state.allowVibration,
                          isSoundSelected: state.allowSound,
                          onPreviosSelected: () => context
                              .read<AzkarAfterSalahBloc>()
                              .add(
                                const AzkarAfterSalahEvent.leftZikerSelected(),
                              ),
                          onNextSelected: () => context
                              .read<AzkarAfterSalahBloc>()
                              .add(
                                const AzkarAfterSalahEvent.rightZikerEnabled(),
                              ),
                          onVibrationSelected: () => context
                              .read<AzkarAfterSalahBloc>()
                              .add(
                                const AzkarAfterSalahEvent.vibrationSetting(),
                              ),
                          onSoundSelected: () =>
                              context.read<AzkarAfterSalahBloc>().add(
                                    const AzkarAfterSalahEvent.soundSetting(),
                                  ),
                          onIncreaseCounter: () =>
                              context.read<AzkarAfterSalahBloc>().add(
                                    AzkarAfterSalahEvent.incrementCounter(
                                        azkarItem),
                                  ),
                          onResetCounter: () => context
                              .read<AzkarAfterSalahBloc>()
                              .add(
                                AzkarAfterSalahEvent.resetCounter(azkarItem),
                              ),
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

  String _salahName(
      AzkarSalahTimeState salahTime, IslamMobLocalizations localizations) {
    switch (salahTime) {
      case AzkarSalahTimeStateFajir():
      case AzkarSalahTimeStateSunrise():
        return localizations.fajr;
      case AzkarSalahTimeStateZhur():
        return localizations.zhur;
      case AzkarSalahTimeStateAsr():
        return localizations.asr;
      case AzkarSalahTimeStateMaghrib():
        return localizations.maghrib;
      case AzkarSalahTimeStateIsha():
        return localizations.isha;
      case AzkarSalahTimeStateNone():
        return "";
    }
  }
}
