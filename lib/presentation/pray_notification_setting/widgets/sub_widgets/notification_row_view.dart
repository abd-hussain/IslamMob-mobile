import 'package:database_manager/database_manager.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_switch.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class NotificationRowView extends StatelessWidget {
  final String title;
  final String description;
  final String soundFileName;
  final void Function()? onChangeSoundPresses;
  final bool value;
  final Function(bool) onChanged;
  const NotificationRowView({
    super.key,
    required this.title,
    required this.description,
    required this.value,
    required this.onChanged,
    required this.soundFileName,
    required this.onChangeSoundPresses,
  });

  @override
  Widget build(BuildContext context) {
    final isRtl = _isRtlLanguage();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildNotificationTitle(),
                _soundName(),
              ],
            ),
            // ),
          ),
          if (onChangeSoundPresses != null)
            IconButton(
              onPressed: () => onChangeSoundPresses!(),
              icon: const Icon(
                Icons.edit_notifications_outlined,
                color: Colors.blue,
              ),
            )
          else
            const SizedBox.shrink(),
          _buildNotificationSwitch(context, isRtl),
        ],
      ),
    );
  }

  Widget _buildNotificationTitle() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            title: title,
            fontSize: 16,
            maxLines: 2,
            color: const Color(0xff444444),
            fontWeight: FontWeight.bold,
          ),
          if (description != "")
            CustomText(
              title: description,
              fontSize: 14,
              color: const Color(0xff444444),
              fontWeight: FontWeight.bold,
            )
          else
            const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget _soundName() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: CustomText(
        title: soundFileName,
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
    final String languageCode = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldConstant.userLanguageCode, defaultValue: "en");
    return languageCode == "ar" || languageCode == "fa";
  }
}
