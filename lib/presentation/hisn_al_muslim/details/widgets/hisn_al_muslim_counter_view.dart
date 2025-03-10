import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class HisnAlMuslimCounterView extends StatelessWidget {
  final int readCount;
  final int index;
  final int totalLength;
  final int currentCount;

  const HisnAlMuslimCounterView({
    super.key,
    required this.readCount,
    required this.index,
    required this.totalLength,
    required this.currentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              const Spacer(),
              const Divider(color: Color(0xff444444)),
              Padding(
                padding: const EdgeInsets.all(8),
                child: _buildInfoRow(context),
              ),
            ],
          ),
          _buildProgressCircle(),
        ],
      ),
    );
  }

  /// Builds the bottom row with index and repetition count
  Widget _buildInfoRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          title: "$index/$totalLength",
          fontSize: 16,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
        CustomText(
          title:
              "${IslamMobLocalizations.of(context).repetition} : ($readCount)",
          fontSize: 16,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }

  /// Builds the circular progress indicator with the counter inside
  Widget _buildProgressCircle() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: const Color(0xff444444),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox.square(
              dimension: 112,
              child: CircularProgressIndicator(
                value: readCount > 0 ? currentCount / readCount : 0,
                color: const Color(0xff008480),
                strokeWidth: 5,
              ),
            ),
            _buildCounterText(),
          ],
        ),
      ),
    );
  }

  /// Displays the current counter inside the progress circle
  Widget _buildCounterText() {
    return Text(
      '$currentCount',
      style: const TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
