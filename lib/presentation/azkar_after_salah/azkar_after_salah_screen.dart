import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:azkar/model/azkar.dart';
import 'package:azkar/model/azkar_salah_time.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/constants/argument_constant.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/azkar_after_salah/bloc/azkar_after_salah_bloc.dart';
import 'package:islam_app/presentation/azkar_after_salah/widget/finish_view.dart';
import 'package:islam_app/presentation/azkar_after_salah/widget/zeker_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

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
          ..add(
            AzkarAfterSalahEvent.fillInitialValue(
              state: salahTime,
            ),
          ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    _buildAzkarList(),
                    _buildFinishView(),
                  ],
                ),
              ),
              const AddMobBanner(verticalPadding: 0),
            ],
          ),
        ),
      ),
    );
  }

  /// Displays the finish view when all counters are filled, otherwise shows nothing.
  Widget _buildFinishView() {
    return BlocBuilder<AzkarAfterSalahBloc, AzkarAfterSalahState>(
      builder: (context, state) {
        return context.read<AzkarAfterSalahBloc>().isCounterFilled()
            ? const AzkarFinishView()
            : const SizedBox.shrink();
      },
    );
  }

  /// Dynamically builds a list of Azkar items based on the state.
  Widget _buildAzkarList() {
    return BlocBuilder<AzkarAfterSalahBloc, AzkarAfterSalahState>(
      builder: (context, state) {
        if (state.azkarList.isEmpty) {
          return const SizedBox.shrink();
        }

        return ListView.builder(
          itemCount: state.azkarList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final azkar = state.azkarList[index];

            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ZekerView(
                azkarModel: azkar,
                isDisabled: azkar.currentCount >= azkar.maxCount,
                onTap: () => _incrementAzkar(context, azkar),
              ),
            );
          },
        );
      },
    );
  }

  /// Handles incrementing the Azkar count and emitting the update event.
  void _incrementAzkar(BuildContext context, AzkarModel azkar) {
    final updatedAzkar = azkar.copyWith(currentCount: azkar.currentCount + 1);
    context
        .read<AzkarAfterSalahBloc>()
        .add(AzkarAfterSalahEvent.incrementCounter(updatedAzkar));
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
