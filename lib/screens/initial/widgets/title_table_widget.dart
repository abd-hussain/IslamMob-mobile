import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class TitleTableWidget extends StatefulWidget {
  const TitleTableWidget({super.key});

  @override
  State<TitleTableWidget> createState() => _TitleTableWidgetState();
}

class _TitleTableWidgetState extends State<TitleTableWidget> {
  final List<String> phrases = [
    "اختر لغتك المفضلة",
    "Select Your Favorite Language",
    'Favori Dilinizi Seçin',
    'زبان مورد علاقه خود را انتخاب کنید',
    'Sélectionnez votre langue préférée',
    'Выберите ваш любимый язык',
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        currentIndex =
            (currentIndex + 1) % phrases.length; // Cycle through phrases
      });
      _startAnimation(); // Continue looping the animation
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: CustomText(
          title: phrases[currentIndex],
          fontSize: 15,
          textColor: const Color(0xff034061),
          fontWeight: FontWeight.bold,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
