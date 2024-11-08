import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/utils/constants/database_constant.dart';

class ArrowView extends StatelessWidget {
  const ArrowView({super.key});

  @override
  Widget build(BuildContext context) {
    final box = Hive.box(DatabaseBoxConstant.userInfo);
    if (box.get(DatabaseFieldConstant.selectedLanguage) == "ar") {
      return const Icon(
        Icons.arrow_back,
        color: Colors.white,
      );
    } else {
      return const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      );
    }
  }
}
