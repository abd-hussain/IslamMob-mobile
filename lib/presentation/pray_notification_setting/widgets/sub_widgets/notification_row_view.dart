import 'package:database_manager/database_manager.dart';
import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_switch.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays a notification setting row with toggle switch and sound configuration.
///
/// This widget is used in the prayer notification settings screen to display
/// individual notification preferences. Each row contains:
/// - A title and optional description for the notification type
/// - The current sound file name being used
/// - An optional edit button to change the notification sound
/// - A toggle switch to enable/disable the notification
///
/// The widget automatically adapts to RTL (Right-to-Left) languages like Arabic
/// and Persian by adjusting the switch direction accordingly.
class NotificationRowView extends StatelessWidget {
  /// The main title text for the notification setting.
  ///
  /// This text describes the type of notification (e.g., "Fajr Prayer", "Maghrib Prayer").
  final String title;

  /// Optional description text that provides additional context.
  ///
  /// This text appears below the title in smaller font. Can be empty if no
  /// additional description is needed.
  final String description;

  /// The name of the sound file currently selected for this notification.
  ///
  /// This text is displayed to show users which sound will play when the
  /// notification is triggered.
  final String soundFileName;

  /// Callback function triggered when the sound edit button is pressed.
  ///
  /// If null, the edit button will not be displayed. When provided, an edit
  /// icon button will be shown that allows users to change the notification sound.
  final void Function()? onChangeSoundPresses;

  /// The current state of the notification toggle switch.
  ///
  /// True indicates the notification is enabled, false indicates it's disabled.
  final bool value;

  /// Callback function triggered when the toggle switch state changes.
  ///
  /// This function receives the new boolean value when the user toggles the switch.
  final Function(bool) onChanged;

  /// Creates a [NotificationRowView] widget.
  ///
  /// All parameters except [onChangeSoundPresses] are required. The [description]
  /// can be an empty string if no additional context is needed.
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
        key: DatabaseFieldConstant.userLanguageCode,
        defaultValue: "en") as String;
    return languageCode == "ar" || languageCode == "fa";
  }
}
