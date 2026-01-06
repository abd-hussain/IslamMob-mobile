import 'package:flutter/material.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/domain/usecase/salah_box_usecase.dart';
import 'package:islam_app/domain/usecase/timing_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class NextSalahView extends StatefulWidget {
  final SalahTimeState salahType;

  const NextSalahView({super.key, required this.salahType});

  @override
  State<NextSalahView> createState() => _NextSalahViewState();
}

class _NextSalahViewState extends State<NextSalahView> {
  /// Timing use case instance for date calculations and formatting.
  final TimingUseCase timingUsecase = locator<TimingUseCase>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: _containerDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHijriDate(),
                      const SizedBox(height: 5),
                      _buildMeladyDate(),
                      const SizedBox(height: 5),
                      _buildDayDetails(context),
                      const SizedBox(height: 5),
                      _buildNextSalahInfo(context, widget.salahType),
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  Expanded(child: _buildSalahImage(widget.salahType)),
                ],
              ),
              const Divider(color: Colors.white),
              Row(
                children: [
                  CustomText(title: "Tap to see the prayer time", fontSize: 16),
                  const Expanded(child: SizedBox()),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the next Salah info container.
  Widget _buildNextSalahInfo(BuildContext context, SalahTimeState salahType) {
    return Column(
      children: [
        CustomText(
          title: SalahBoxUseCase.getSalahName(context, salahType),
          fontSize: 25,
        ),
      ],
    );
  }

  /// Builds the image representing the Salah type.
  Widget _buildSalahImage(SalahTimeState salahType) {
    return Image.asset("assets/images/man_pray.png");
  }

  /// Builds the day title and name display.
  Widget _buildDayDetails(BuildContext context) {
    final dayName = timingUsecase.getDayName(
      context: context,
      date: timingUsecase.getDateWithDayOffset(dayOffset: 0),
    );

    return CustomText(
      title: dayName,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      textAlign: TextAlign.center,
    );
  }

  /// Builds the Gregorian (Melady) date display.
  Widget _buildMeladyDate() {
    final meladyDate = timingUsecase.formatDate(
      timingUsecase.getDateWithDayOffset(dayOffset: 0),
    );
    return CustomText(
      title: meladyDate,
      fontSize: 14,
      fontWeight: FontWeight.bold,
      textAlign: TextAlign.center,
    );
  }

  /// Builds the Hijri date display.
  Widget _buildHijriDate() {
    final hijriDate = timingUsecase.formatHijriDate(
      timingUsecase.getHijriDateWithDayOffset(dayOffset: 0),
    );
    return CustomText(
      title: hijriDate,
      fontSize: 14,
      fontWeight: FontWeight.bold,
      textAlign: TextAlign.center,
    );
  }

  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      color: const Color(0xff292929),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      boxShadow: [
        BoxShadow(
          color: const Color(0xff292929).withValues(alpha: 0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // Shadow position
        ),
      ],
    );
  }
}
