import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/domain/usecase/salah_box_usecase.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class SalahBox extends StatelessWidget {
  final SalahTimeState salahType;
  final DateTime salahTime;
  final bool isCurrentSalah;

  const SalahBox({
    super.key,
    required this.salahType,
    required this.salahTime,
    required this.isCurrentSalah,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isCurrentSalah ? Colors.white : Colors.grey,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6, top: 4, bottom: 4),
        child: Column(
          children: [
            _buildSalahImage(),
            _buildSalahName(context),
            _buildSalahTime(),
            _buildTimeType(),
          ],
        ),
      ),
    );
  }

  /// Builds the image representing the Salah type.
  Widget _buildSalahImage() {
    return Image.asset(
      SalahBoxUseCase.getSalahImage(salahType),
      scale: 6,
    );
  }

  /// Builds the text widget for the Salah name.
  Widget _buildSalahName(BuildContext context) {
    return CustomText(
      title: SalahBoxUseCase.getSalahName(context, salahType),
      fontSize: 14,
      color: const Color(0xff444444),
      fontWeight: FontWeight.bold,
      textAlign: TextAlign.center,
    );
  }

  /// Builds the text widget for the Salah time.
  Widget _buildSalahTime() {
    return CustomText(
      title: DateFormat('hh:mm').format(salahTime),
      fontSize: 14,
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
      fontSize: 14,
      color: const Color(0xff444444),
      fontWeight: FontWeight.bold,
      maxLines: 2,
      textAlign: TextAlign.center,
    );
  }
}
