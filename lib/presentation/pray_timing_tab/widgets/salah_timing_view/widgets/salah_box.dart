import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/domain/usecase/salah_box_usecase.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget for displaying individual Islamic prayer (Salah) information boxes.
///
/// This widget represents a single prayer time in the prayer timing interface,
/// showing essential information for each of the five daily Islamic prayers.
/// It features:
/// - **Prayer type identification** with appropriate Islamic iconography
/// - **Accurate prayer time** with 12-hour format and AM/PM indication
/// - **Visual highlighting** for the current or next upcoming prayer
/// - **Localized prayer names** supporting multiple languages
/// - **Consistent styling** with rounded corners and proper spacing
///
/// The Salah box is fundamental to Islamic practice, providing Muslims with
/// clear, accessible prayer time information for each of the five daily
/// prayers (Fajr, Dhuhr, Asr, Maghrib, Isha) plus sunrise time for reference.
class SalahBox extends StatelessWidget {
  /// The type of Islamic prayer this box represents.
  final SalahTimeState salahType;

  /// The exact date and time for this prayer.
  final DateTime salahTime;

  /// Whether this is the current or next upcoming prayer.
  final bool isCurrentSalah;

  /// Creates a [SalahBox] widget for displaying prayer information.
  ///
  /// Parameters:
  /// - [salahType]: The Islamic prayer type (Fajr, Dhuhr, Asr, Maghrib, Isha, Sunrise)
  /// - [salahTime]: The exact date and time for this prayer
  /// - [isCurrentSalah]: Whether this prayer should be visually highlighted
  const SalahBox({
    super.key,
    required this.salahType,
    required this.salahTime,
    required this.isCurrentSalah,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isCurrentSalah ? const Color(0xff292929) : Colors.white,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              _buildSalahImage(),
              const SizedBox(width: 8),
              _buildSalahName(context),
              const Expanded(child: SizedBox()),
              _buildSalahTime(),
              const SizedBox(width: 4),
              _buildTimeType(),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the image representing the Salah type.
  Widget _buildSalahImage() {
    return Image.asset(SalahBoxUseCase.getSalahImage(salahType), scale: 8);
  }

  /// Builds the text widget for the Salah name.
  Widget _buildSalahName(BuildContext context) {
    return CustomText(
      title: SalahBoxUseCase.getSalahName(context, salahType),
      fontSize: 16,
      color: const Color(0xff444444),
      fontWeight: FontWeight.bold,
      textAlign: TextAlign.center,
    );
  }

  /// Builds the text widget for the Salah time.
  Widget _buildSalahTime() {
    return CustomText(
      title: DateFormat('hh:mm').format(salahTime),
      fontSize: 16,
      color: const Color(0xff444444),
      fontWeight: FontWeight.bold,
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }

  /// Builds the text widget for the time type (e.g., AM/PM).
  Widget _buildTimeType() {
    return CustomText(
      title: DateFormat('a').format(salahTime),
      fontSize: 12,
      color: const Color(0xff444444),
      fontWeight: FontWeight.bold,
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }
}
