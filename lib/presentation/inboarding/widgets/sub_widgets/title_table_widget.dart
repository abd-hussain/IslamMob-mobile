import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays animated title text during onboarding.
///
/// This widget cycles through different language phrases to prompt users
/// to select their preferred language. It automatically animates between
/// Arabic and English text every second to create an engaging onboarding
/// experience.
class TitleTableWidget extends StatefulWidget {
  /// Creates a [TitleTableWidget] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const TitleTableWidget({super.key});

  @override
  State<TitleTableWidget> createState() => _TitleTableWidgetState();
}

class _TitleTableWidgetState extends State<TitleTableWidget> {
  final List<String> _phrases = [
    "اختر لغتك المفضلة",
    "Select Your Favorite Language",
  ];
  int _currentIndex = 0;
  bool _isDisposed = false;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(const Duration(seconds: 1), () {
      if (!_isDisposed) {
        setState(() {
          _currentIndex =
              (_currentIndex + 1) % _phrases.length; // Cycle through phrases
        });
        _startAnimation(); // Continue looping the animation
      }
    });
  }

  @override
  void dispose() {
    _isDisposed = true; // Mark the widget as disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: CustomText(
          title: _phrases[_currentIndex],
          fontSize: 15,
          color: const Color(0xff034061),
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
