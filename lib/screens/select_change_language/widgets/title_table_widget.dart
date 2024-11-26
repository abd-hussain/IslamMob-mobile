import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class TitleTableWidget extends StatefulWidget {
  const TitleTableWidget({super.key});

  @override
  State<TitleTableWidget> createState() => _TitleTableWidgetState();
}

class _TitleTableWidgetState extends State<TitleTableWidget> {
  final List<String> _phrases = [
    "اختر لغتك المفضلة",
    "Select Your Favorite Language",
    'Favori Dilinizi Seçin',
    'زبان مورد علاقه خود را انتخاب کنید',
    'Sélectionnez votre langue préférée',
    'Выберите ваш любимый язык',
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
