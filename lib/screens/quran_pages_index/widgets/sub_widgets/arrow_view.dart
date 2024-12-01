import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/utils/constants/database_constant.dart';

class ArrowView extends StatelessWidget {
  const ArrowView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedLanguage = _getSelectedLanguage();
    return _getArrowIcon(selectedLanguage);
  }

  /// Retrieves the currently selected language from the Hive database.
  String _getSelectedLanguage() {
    final box = Hive.box(DatabaseBoxConstant.userInfo);
    return box.get(DatabaseFieldConstant.selectedLanguage, defaultValue: "en")
        as String;
  }

  /// Returns the appropriate arrow icon based on the selected language.
  Icon _getArrowIcon(String languageCode) {
    return Icon(
      languageCode == "ar" ? Icons.arrow_back : Icons.arrow_forward,
      color: Colors.white,
    );
  }
}
