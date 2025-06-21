import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/notification_sound.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/domain/usecase/setup_local_notification_when_app_open_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A widget that displays a selectable sound option tile for notification settings.
///
/// This tile is used in the sound selection interface where users can choose
/// different notification sounds for prayers and other Islamic reminders. Each tile
/// displays:
/// - A radio button indicating selection state
/// - The sound name
/// - A play button to preview the sound
///
/// The tile's appearance adapts based on its position in a list (first, middle, or last)
/// with appropriate border radius styling. When the play button is pressed, it triggers
/// a test notification with the selected sound.
class ChooceSoundTile extends StatelessWidget {
  /// Whether this tile is the first item in the list.
  ///
  /// Used to apply top border radius styling to create a cohesive list appearance.
  final bool isFirstIndex;

  /// Whether this tile is the last item in the list.
  ///
  /// Used to apply bottom border radius styling to create a cohesive list appearance.
  final bool isLastIndex;

  /// Whether this sound option is currently selected.
  ///
  /// When true, displays a checked radio button; when false, displays an unchecked one.
  final bool isSelected;

  /// The notification sound data to display in this tile.
  ///
  /// Contains the sound name and file information that will be shown to the user.
  final NotificationSound sound;

  /// The type of notification this sound selection is for.
  ///
  /// Used when testing the notification sound to ensure the correct context
  /// and behavior for the specific notification type.
  final NotificationTypeState type;

  /// Creates a [ChooceSoundTile] widget.
  ///
  /// All parameters are required to properly display and handle the sound selection tile.
  const ChooceSoundTile({
    super.key,
    required this.isFirstIndex,
    required this.isLastIndex,
    required this.sound,
    required this.isSelected,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4, top: 4),
      child: Container(
        decoration: _containerDecoration(isFirstIndex, isLastIndex),
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            if (isSelected)
              const Icon(
                Icons.radio_button_checked,
                color: Color(0xff008480),
                size: 30,
              )
            else
              const Icon(
                Icons.radio_button_off,
                color: Colors.grey,
                size: 30,
              ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                color: Colors.grey,
                width: 2,
                height: 30,
              ),
            ),
            Expanded(
              child: CustomText(
                title: sound.name,
                fontSize: 16,
                color: const Color(0xff444444),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8),
            IconButton(
              key: const Key('play_button'),
              onPressed: () =>
                  locator<SetupLocalNotificationWhenAppOpenUseCase>()
                      .testNotification(
                context: context,
                type: type,
                soundFileName: sound.soundFileName,
              ),
              iconSize: 35,
              icon: const Icon(Icons.play_arrow),
              color: const Color(0xff292929),
            ),
          ],
        ),
      ),
    );
  }

  /// Returns the decoration for the container.
  BoxDecoration _containerDecoration(bool isFirstIndex, bool isLastIndex) {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: isFirstIndex
          ? const BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8))
          : isLastIndex
              ? const BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))
              : BorderRadius.circular(0),
      boxShadow: [
        const BoxShadow(
          color: Colors.grey,
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    );
  }
}
