import 'package:azkar/azkar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/azkar_after_salah/bloc/azkar_after_salah_bloc.dart';
import 'package:islam_app/presentation/azkar_after_salah/widget/finish_view.dart';
import 'package:islam_app/presentation/azkar_after_salah/widget/zeker_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget for displaying post-prayer Azkar (Islamic remembrances) interface.
///
/// This widget provides Muslims with authentic Islamic remembrances and
/// supplications to recite after completing their obligatory prayers.
/// It features:
/// - **Prayer-specific Azkar** tailored to each of the five daily prayers
/// - **Interactive counters** for tracking recitation progress
/// - **Completion tracking** with visual feedback when finished
/// - **Authentic Islamic content** from traditional Islamic sources
/// - **Multilingual support** for global Muslim community access
///
/// The Azkar after Salah are essential Islamic practices that help Muslims
/// maintain spiritual connection and earn additional rewards after their
/// obligatory prayers, following the Sunnah of Prophet Muhammad (PBUH).
class AzkarAfterSalahView extends StatelessWidget {
  /// The prayer type for which to display the corresponding Azkar.
  final AzkarSalahTimeState salahType;

  /// Creates an [AzkarAfterSalahView] widget for post-prayer remembrances.
  ///
  /// Parameters:
  /// - [salahType]: The specific prayer type (Fajr, Dhuhr, Asr, Maghrib, Isha)
  ///   for which to display the appropriate Islamic remembrances and supplications.
  const AzkarAfterSalahView({super.key, required this.salahType});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AzkarAfterSalahBloc()
        ..add(
          AzkarAfterSalahEvent.fillInitialValue(
            state: salahType,
          ),
        ),
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
