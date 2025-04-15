import 'package:azkar/azkar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/home_tab/bloc/azkar_after_salah_view/azkar_after_salah_view_bloc.dart';
import 'package:islam_app/presentation/home_tab/widgets/azkar_after_salah/widgets/finish_view.dart';
import 'package:islam_app/presentation/home_tab/widgets/azkar_after_salah/widgets/zeker_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class AzkarAfterSalahView extends StatelessWidget {
  final AzkarSalahTimeState salahType;
  const AzkarAfterSalahView({super.key, required this.salahType});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AzkarAfterSalahViewBloc()
        ..add(AzkarAfterSalahViewEvent.initializeAzkar(state: salahType)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          children: [
            _buildHeader(context, salahType),
            const SizedBox(height: 10),
            _buildFinishView(),
            const SizedBox(height: 10),
            _buildAzkarList(),
          ],
        ),
      ),
    );
  }

  /// Builds the header section with an Azkar title and an icon.
  Widget _buildHeader(BuildContext context, AzkarSalahTimeState salahTime) {
    final localizations = IslamMobLocalizations.of(context);

    return Row(
      children: [
        Image.asset("assets/images/toolbar/azkar_after_salah.png", scale: 10),
        const SizedBox(width: 4),
        CustomText(
          title: localizations.azkarAfterSalah +
              " " +
              _salahName(salahTime, localizations),
          fontSize: 18,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }

  /// Displays the finish view when all counters are filled, otherwise shows nothing.
  Widget _buildFinishView() {
    return BlocBuilder<AzkarAfterSalahViewBloc, AzkarAfterSalahViewState>(
      builder: (context, state) {
        return context.read<AzkarAfterSalahViewBloc>().isCounterFilled()
            ? const AzkarFinishView()
            : const SizedBox.shrink();
      },
    );
  }

  /// Dynamically builds a list of Azkar items based on the state.
  Widget _buildAzkarList() {
    return BlocBuilder<AzkarAfterSalahViewBloc, AzkarAfterSalahViewState>(
      builder: (context, state) {
        if (state.azkarList.isEmpty) {
          return const SizedBox.shrink();
        }

        return ListView.builder(
          itemCount: state.azkarList.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
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
        .read<AzkarAfterSalahViewBloc>()
        .add(AzkarAfterSalahViewEvent.incrementCounter(updatedAzkar));
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
