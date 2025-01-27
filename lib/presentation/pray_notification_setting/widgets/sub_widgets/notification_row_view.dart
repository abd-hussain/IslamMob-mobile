import 'package:database_manager/database_manager.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_switch.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class NotificationRowView extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool) onChanged;
  const NotificationRowView({super.key, required this.title, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final isRtl = _isRtlLanguage();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNotificationTitle(),
          _buildNotificationSwitch(context, isRtl),
        ],
      ),
    );
  }

  Widget _buildNotificationTitle() {
    return Expanded(
      child: CustomText(
        title: title,
        fontSize: 16,
        maxLines: 2,
        color: const Color(0xff444444),
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildNotificationSwitch(BuildContext context, bool isRtl) {
    return CustomSwitch(
      value: value,
      direction: isRtl ? Direction.rtl : Direction.ltr,
      onChanged: onChanged,
    );
  }

  bool _isRtlLanguage() {
    final String languageCode =
        DataBaseManagerBase.getFromDatabase(key: DatabaseFieldConstant.userLanguageCode, defaultValue: "en");
    return languageCode == "ar" || languageCode == "fa";
  }
}
