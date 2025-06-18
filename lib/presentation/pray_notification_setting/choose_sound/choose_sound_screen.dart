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

class ChooseSoundScreen extends StatelessWidget {
  const ChooseSoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);
    final Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments! as Map<String, dynamic>;
    final NotificationTypeState notificationSettingType =
        arguments[ArgumentConstant.notificationSettingType] ??
            NotificationTypeState.fajir;

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
                              onTap: () =>
                                  blocContext.read<ChooseSoundBloc>().add(
                                        ChooseSoundEvent
                                            .changeNotificationSoundSettings(
                                                state.notificationSounds[index]
                                                    .soundFileName),
                                      ),
                              child: ChooceSoundTile(
                                isFirstIndex: index == 0,
                                isLastIndex: index ==
                                    state.notificationSounds.length - 1,
                                sound: state.notificationSounds[index],
                                type: notificationSettingType,
                                isSelected: state.notificationSounds[index]
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
                            }),
                      )
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

  String getNotificationTitleName(IslamMobLocalizations localization,
      NotificationTypeState notificationSettingType) {
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
