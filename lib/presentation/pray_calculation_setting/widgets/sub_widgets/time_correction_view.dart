import 'package:flutter/material.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/sub_widgets/counter_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class TimeCorrectionView extends StatelessWidget {
  final String title;
  final int initialValue;
  final ValueChanged<int> onValueChanged;

  const TimeCorrectionView({
    super.key,
    required this.title,
    required this.initialValue,
    required this.onValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: _buildContainer(
        child: Row(
          children: [
            _buildTitle(),
            CounterView(
              initialValue: initialValue,
              onValueChanged: onValueChanged,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Expanded(
      child: CustomText(
        title: title,
        fontSize: 14,
        color: const Color(0xff444444),
        fontWeight: FontWeight.bold,
        maxLines: 2,
      ),
    );
  }

  Widget _buildContainer({required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    );
  }
}
