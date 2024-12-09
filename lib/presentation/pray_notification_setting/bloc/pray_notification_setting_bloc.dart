import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/domain/model/pray_notification_settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/notification_type_enum.dart';
import 'package:islam_app/domain/repository/local_notifications.dart';
import 'package:islam_app/core/constants/database_constant.dart';

part 'pray_notification_setting_event.dart';
part 'pray_notification_setting_state.dart';
part 'pray_notification_setting_bloc.freezed.dart';

class PrayNotificationSettingBloc
    extends Bloc<PrayNotificationSettingEvent, PrayNotificationSettingState> {
  final _box = Hive.box(DatabaseBoxConstant.userInfo);

  PrayNotificationSettingBloc() : super(const PrayNotificationSettingState()) {
    on<_QuickNotificationSettings>(_quickNotificationSettings);
    on<_PrayNotificationSettings>(_prayNotificationSettings);
    on<_PushNotificationSetting>(_pushNotificationSetting);

    _setupInitialValues();
  }

  _setupInitialValues() {
    // final disableAllForToday = _box.get(LocalNotificationConstant.disableAllForToday, defaultValue: false);
    // final disableAllForThreeDay = _box.get(LocalNotificationConstant.disableAllForThreeDay, defaultValue: false);
    // final disableAllForWeek = _box.get(LocalNotificationConstant.disableAllForWeek, defaultValue: false);

    // final disableFajr = _box.get(LocalNotificationConstant.disableFajr, defaultValue: true);
    // final disableDuher = _box.get(LocalNotificationConstant.disableDuher, defaultValue: true);
    // final disableAsr = _box.get(LocalNotificationConstant.disableAsr, defaultValue: true);
    // final disableMagrieb = _box.get(LocalNotificationConstant.disableMagrieb, defaultValue: true);
    // final disableIsha = _box.get(LocalNotificationConstant.disableIsha, defaultValue: true);

    // if (disableAllForToday == true) {
    //   add(PrayNotificationSettingEvent.updateAllNotificationForToday(status: disableAllForToday));
    // }

    // if (disableAllForThreeDay == true) {
    //   add(PrayNotificationSettingEvent.updateAllNotificationForThreeDay(status: disableAllForThreeDay));
    // }
    // if (disableAllForWeek == true) {
    //   add(PrayNotificationSettingEvent.updateAllNotificationForWeekDay(status: disableAllForWeek));
    // }

    // add(PrayNotificationSettingEvent.updateFajirNotification(status: disableFajr));

    // add(PrayNotificationSettingEvent.updateDuhirNotification(status: disableDuher));

    // add(PrayNotificationSettingEvent.updateAsrNotification(status: disableAsr));

    // add(PrayNotificationSettingEvent.updateMagriebNotification(status: disableMagrieb));

    // add(PrayNotificationSettingEvent.updateIshaNotification(status: disableIsha));

    // add(PrayNotificationSettingEvent.updateAdkarNotification(status: disableAzkar));

    // if (disableApplication == true) {
    //   add(PrayNotificationSettingEvent.updateApplicationNotification(status: disableApplication));
    // }

    //TODO
  }

  String getLanguage() {
    return _box.get(DatabaseFieldConstant.selectedLanguage, defaultValue: "en");
  }

  List<PrayerNotification> quickNotifications(BuildContext context) => [
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingTodayAll,
          notificationSelector: (state) => state.allNotificationForToday,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.quickNotificationSettings(
            status: value,
            type: QuickNotificationType.allNotificationForToday,
          ),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingThreedayAll,
          notificationSelector: (state) => state.allNotificationForThreeDay,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.quickNotificationSettings(
            status: value,
            type: QuickNotificationType.allNotificationForThreeDay,
          ),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingWeekAll,
          notificationSelector: (state) => state.allNotificationForWeekDay,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.quickNotificationSettings(
            status: value,
            type: QuickNotificationType.allNotificationForWeekDay,
          ),
        ),
      ];

  List<PrayerNotification> prayerNotifications(BuildContext context) => [
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingFajir,
          notificationSelector: (state) => state.fajir,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.prayNotificationSettings(
            status: value,
            type: PrayNotificationType.fajir,
          ),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingDuher,
          notificationSelector: (state) => state.duhir,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.prayNotificationSettings(
            status: value,
            type: PrayNotificationType.duhir,
          ),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingAsr,
          notificationSelector: (state) => state.asr,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.prayNotificationSettings(
            status: value,
            type: PrayNotificationType.asr,
          ),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingMagrieb,
          notificationSelector: (state) => state.magrieb,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.prayNotificationSettings(
            status: value,
            type: PrayNotificationType.magrieb,
          ),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingIsha,
          notificationSelector: (state) => state.isha,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.prayNotificationSettings(
            status: value,
            type: PrayNotificationType.isha,
          ),
        ),
      ];

  List<PrayerNotification> otherNotifications(BuildContext context) => [
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingSunrise,
          notificationSelector: (state) => state.sunrise,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.prayNotificationSettings(
            status: value,
            type: PrayNotificationType.sunrise,
          ),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationBeforeSalah15Minutes,
          notificationSelector: (state) => state.before15Min,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.prayNotificationSettings(
            status: value,
            type: PrayNotificationType.before15Min,
          ),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingApplication,
          notificationSelector: (state) => state.applicationNotification,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.pushNotificationSetting(
            status: value,
          ),
        ),
      ];

  FutureOr<void> _quickNotificationSettings(_QuickNotificationSettings event,
      Emitter<PrayNotificationSettingState> emit) async {
    // await _box.put(LocalNotificationConstant.disableAllForWeek, event.status);
    // await _box.put(LocalNotificationConstant.disableAllForThreeDay, event.status);
    // await _box.put(LocalNotificationConstant.disableAllForToday, event.status);
    DateTime scheduledDate = DateTime.now().add(const Duration(seconds: 3));
    LocalNotificationRepository.scheduleNotification(
      id: 0,
      title: "Scheduled Notification",
      body: "This notification is scheduled to appear after 5 seconds",
      scheduledTime: scheduledDate,
      soundType: NotificationSoundType.isha,
    );
    // emit(state.copyWith(allNotificationForToday: event.status));

    //TODO
  }

  FutureOr<void> _prayNotificationSettings(_PrayNotificationSettings event,
      Emitter<PrayNotificationSettingState> emit) async {
    // await _box.put(LocalNotificationConstant.disableIsha, event.status);
    // await _box.put(LocalNotificationConstant.disableMagrieb, event.status);
    // await _box.put(LocalNotificationConstant.disableAsr, event.status);
    // await _box.put(LocalNotificationConstant.disableDuher, event.status);
    // await _box.put(LocalNotificationConstant.disableFajr, event.status);

    //TODO
  }

  FutureOr<void> _pushNotificationSetting(
      event, Emitter<PrayNotificationSettingState> emit) async {
    // await _box.put(LocalNotificationConstant.disablePushNotifications, event.status);

    //TODO
  }
}
