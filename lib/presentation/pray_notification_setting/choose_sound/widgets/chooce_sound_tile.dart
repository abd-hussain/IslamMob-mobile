import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/notification_sound.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/domain/usecase/setup_local_notification_when_app_open_usecase.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class ChooceSoundTile extends StatelessWidget {
  final bool isFirstIndex;
  final bool isLastIndex;
  final bool isSelected;
  final NotificationSound sound;
  final NotificationTypeState type;

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
