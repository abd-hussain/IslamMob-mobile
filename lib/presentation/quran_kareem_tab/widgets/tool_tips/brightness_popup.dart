import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class BrightnessPopup extends StatefulWidget {
  final ValueChanged<double> returnBrightness;
  final double initialValue;

  const BrightnessPopup({
    super.key,
    required this.returnBrightness,
    required this.initialValue,
  });

  @override
  State<BrightnessPopup> createState() => _BrightnessPopupState();
}

class _BrightnessPopupState extends State<BrightnessPopup> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
      value: widget.initialValue,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsAlignment: MainAxisAlignment.spaceBetween,
      backgroundColor: Colors.black.withOpacity(0.8),
      content: _buildContent(context),
      actions: _buildActions(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.sunny, color: Colors.white70),
        const SizedBox(width: 5),
        Expanded(child: _buildSlider(context)),
        const SizedBox(width: 5),
        const Icon(Icons.nights_stay, color: Colors.white70),
      ],
    );
  }

  Widget _buildSlider(BuildContext context) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(width: 0.1),
        gradient: const LinearGradient(colors: [
          Colors.black,
          Colors.grey,
          Colors.white,
        ]),
        borderRadius: BorderRadius.circular(5),
      ),
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (_, __) {
          return SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.white,
              inactiveTrackColor: Colors.white,
              trackHeight: 0,
              thumbColor: Colors.white,
              overlayColor: Colors.white.withAlpha(1),
            ),
            child: Slider(
              value: _animationController.value,
              onChanged: (value) {
                _animationController.value = value;
                widget.returnBrightness(double.parse(value.toStringAsFixed(2)));
              },
            ),
          );
        },
      ),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    return [
      TextButton(
        onPressed: () => Navigator.of(context).pop(),
        child: CustomText(
          title: IslamMobLocalizations.of(context).close,
          fontSize: 20,
          color: Colors.white70,
          fontWeight: FontWeight.bold,
        ),
      ),
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
          widget.returnBrightness(0);
        },
        child: CustomText(
          title: IslamMobLocalizations.of(context).resetbrightness,
          fontSize: 20,
          color: Colors.white70,
          fontWeight: FontWeight.bold,
        ),
      ),
    ];
  }
}
