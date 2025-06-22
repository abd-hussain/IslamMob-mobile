import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/constants/argument_constant.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/pray_notification_setting/choose_sound/bloc/choose_sound_bloc.dart';
import 'package:islam_app/presentation/pray_notification_setting/choose_sound/widgets/chooce_sound_tile.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// A screen that allows users to choose notification sounds for prayer times.
///
/// This screen provides functionality to:
/// - Display available notification sounds for a specific prayer type
/// - Allow users to preview and select different sound options
/// - Save the selected sound preference for the notification type
/// - Show localized titles based on the prayer/notification type
/// - Provide an intuitive interface with sound tiles and preview functionality
///
/// The screen receives a [NotificationTypeState] argument to determine which
/// prayer or notification type the sound selection is for (Fajr, Zuhr, Asr,
/// Maghrib, Isha, reminders, etc.). It integrates with [ChooseSoundBloc] for
/// state management and sound selection logic.
class ChooseSoundScreen extends StatelessWidget {
  /// Creates a [ChooseSoundScreen].
  ///
  /// This screen expects to receive a [NotificationTypeState] argument
  /// through route settings to determine which notification type's
  /// sound is being configured.
  const ChooseSoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final NotificationTypeState notificationSettingType =
        arguments[ArgumentConstant.notificationSettingType]
            as NotificationTypeState? ??
        const NotificationTypeState.fajir();

    return BlocProvider(
      create: (context) => ChooseSoundBloc()
        ..add(
          ChooseSoundEvent.initialNotificationSoundSettings(
            type: notificationSettingType,
            localization: localization,
          ),
        ),
      child: Scaffold(
        appBar: CustomAppBar(
          title: getNotificationTitleName(
            localization,
            notificationSettingType,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
              child: CustomText(
                title: localization.chooseSound,
                fontSize: 16,
                color: const Color(0xff444444),
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
              child: CustomText(
                title: localization.chooseSoundDesc,
                fontSize: 14,
                color: const Color(0xff444444),
                fontWeight: FontWeight.bold,
                maxLines: 2,
              ),
            ),
            Expanded(
              child: BlocBuilder<ChooseSoundBloc, ChooseSoundState>(
                builder: (blocContext, state) {
                  return Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: state.notificationSounds.length,
                          itemBuilder: (ctx, index) {
                            return InkWell(
                              onTap: () => blocContext.read<ChooseSoundBloc>().add(
                                ChooseSoundEvent.changeNotificationSoundSettings(
                                  state.notificationSounds[index].soundFileName,
                                ),
                              ),
                              child: ChooceSoundTile(
                                isFirstIndex: index == 0,
                                isLastIndex:
                                    index ==
                                    state.notificationSounds.length - 1,
                                sound: state.notificationSounds[index],
                                type: notificationSettingType,
                                isSelected:
                                    state
                                        .notificationSounds[index]
                                        .soundFileName ==
                                    state.selectedSound,
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: CustomButton(
                          title: localization.save,
                          isEnabled: state.selectedSound.isNotEmpty,
                          onTap: () {
                            blocContext.read<ChooseSoundBloc>().add(
                              ChooseSoundEvent.saveChanges(
                                type: notificationSettingType,
                              ),
                            );
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Returns the localized title for the notification sound selection screen.
  ///
  /// This method maps each [NotificationTypeState] to its corresponding
  /// localized title string for display in the app bar and UI elements.
  ///
  /// Parameters:
  /// - [localization]: The localization object containing translated strings
  /// - [notificationSettingType]: The type of notification/prayer for which
  ///   the sound is being selected
  ///
  /// Returns a localized string representing the title for the specific
  /// notification type. Supported types include:
  /// - All five daily prayers (Fajr, Zuhr, Asr, Maghrib, Isha)
  /// - Prayer reminders (15 minutes before)
  /// - Special times (Midnight, Sunrise)
  /// - Friday-specific notifications (Al-Kahf, Jumu'ah Dua)
  ///
  /// Returns an empty string for unsupported notification types.
  String getNotificationTitleName(
    IslamMobLocalizations localization,
    NotificationTypeState notificationSettingType,
  ) {
    switch (notificationSettingType) {
      case NotificationTypeStateFajir():
        return localization.adhanFajirSoundTitle;
      case NotificationTypeStateZuhr():
        return localization.adhanDuhirSoundTitle;
      case NotificationTypeStateAsr():
        return localization.adhanAsrSoundTitle;
      case NotificationTypeStateMaghrib():
        return localization.adhanMagriebSoundTitle;
      case NotificationTypeStateIsha():
        return localization.adhanIshaSoundTitle;
      case NotificationTypeStateBefore15Minutes():
        return localization.adhanBefore15MinSoundTitle;
      case NotificationTypeStateMidnight():
        return localization.adhanMidnightSoundTitle;
      case NotificationTypeStateSunrise():
        return localization.adhanSunriseSoundTitle;
      case NotificationTypeReminderjom3aSoratAlKahfReminder():
        return localization.adhanAlkahfSoundTitle;
      case NotificationTypeStateJom3aLastHourForDoaa():
        return localization.adhanJom3aaSoundTitle;
      default:
        return "";
    }
  }
}
