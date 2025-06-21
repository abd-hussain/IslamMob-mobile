import 'package:flutter/material.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A popup dialog widget for adjusting screen brightness in the Quran Kareem tab.
///
/// This widget displays an interactive brightness slider with visual indicators
/// (sun and moon icons) and action buttons for closing or resetting brightness.
/// The slider uses a gradient background to represent brightness levels from
/// dark to light.
///
/// The popup provides:
/// - Interactive slider for brightness adjustment
/// - Real-time brightness value updates through [returnBrightness] callback
/// - Reset functionality to set brightness to 0
/// - Close button to dismiss the dialog
class BrightnessPopup extends StatefulWidget {
  /// Callback function that receives the updated brightness value.
  ///
  /// This function is called whenever the user adjusts the brightness slider
  /// or resets the brightness. The value ranges from 0.0 (darkest) to 1.0 (brightest).
  final ValueChanged<double> returnBrightness;

  /// The initial brightness value to display when the popup opens.
  ///
  /// This value should be between 0.0 and 1.0, where 0.0 represents
  /// the darkest setting and 1.0 represents the brightest setting.
  final double initialValue;

  /// Creates a [BrightnessPopup] widget.
  ///
  /// Both [returnBrightness] and [initialValue] are required parameters.
  /// The [initialValue] should be between 0.0 and 1.0.
  const BrightnessPopup({
    super.key,
    required this.returnBrightness,
    required this.initialValue,
  });

  @override
  State<BrightnessPopup> createState() => _BrightnessPopupState();
}

class _BrightnessPopupState extends State<BrightnessPopup>
    with SingleTickerProviderStateMixin {
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
      backgroundColor: Colors.black.withValues(alpha: 0.8),
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
    final localize = IslamMobLocalizations.of(context);

    return [
      TextButton(
        onPressed: () => Navigator.of(context).pop(),
        child: CustomText(
          title: localize.close,
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
          title: localize.resetbrightness,
          fontSize: 20,
          color: Colors.white70,
          fontWeight: FontWeight.bold,
        ),
      ),
    ];
  }
}
