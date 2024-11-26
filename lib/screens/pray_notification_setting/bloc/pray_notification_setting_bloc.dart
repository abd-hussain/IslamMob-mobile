import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/models/app_model/pray_notification_settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/services/general/local_notification_service.dart';
import 'package:islam_app/utils/constants/database_constant.dart';

part 'pray_notification_setting_event.dart';
part 'pray_notification_setting_state.dart';
part 'pray_notification_setting_bloc.freezed.dart';

class PrayNotificationSettingBloc
    extends Bloc<PrayNotificationSettingEvent, PrayNotificationSettingState> {
  final _box = Hive.box(DatabaseBoxConstant.userInfo);

  PrayNotificationSettingBloc() : super(const PrayNotificationSettingState()) {
    on<_UpdateAllowAllNotifications>(_updateAllowAllNotifications);
    on<_UpdateAllNotificationForToday>(_updateAllNotificationForToday);
    on<_UpdateAllNotificationForThreeDay>(_updateAllNotificationForThreeDay);
    on<_UpdateAllNotificationForWeekDay>(_updateAllNotificationForWeekDay);
    on<_UpdateFajirNotification>(_updateFajirNotification);
    on<_UpdateDuhirNotification>(_updateDuhirNotification);
    on<_UpdateAsrNotification>(_updateAsrNotification);
    on<_UpdateMagriebNotification>(_updateMagriebNotification);
    on<_UpdateIshaNotification>(_updateIshaNotification);
    on<_UpdateLoadingStatus>(_updateLoadingStatus);
    on<_UpdateAdkarNotification>(_updateAdkarNotification);
    on<_UpdateApplicationNotification>(_updateApplicationNotification);

    _setupInitialValues();
  }

  _setupInitialValues() {
    final disableAllForToday = _box
        .get(LocalNotificationConstant.disableAllForToday, defaultValue: false);
    final disableAllForThreeDay = _box.get(
        LocalNotificationConstant.disableAllForThreeDay,
        defaultValue: false);
    final disableAllForWeek = _box
        .get(LocalNotificationConstant.disableAllForWeek, defaultValue: false);

    final disableFajr =
        _box.get(LocalNotificationConstant.disableFajr, defaultValue: true);
    final disableDuher =
        _box.get(LocalNotificationConstant.disableDuher, defaultValue: true);
    final disableAsr =
        _box.get(LocalNotificationConstant.disableAsr, defaultValue: true);
    final disableMagrieb =
        _box.get(LocalNotificationConstant.disableMagrieb, defaultValue: true);
    final disableIsha =
        _box.get(LocalNotificationConstant.disableIsha, defaultValue: true);

    final disableAzkar =
        _box.get(LocalNotificationConstant.disableAzkar, defaultValue: true);
    final disableApplication = _box
        .get(LocalNotificationConstant.disableApplication, defaultValue: false);

    if (disableAllForToday == true) {
      add(PrayNotificationSettingEvent.updateAllNotificationForToday(
          status: disableAllForToday));
    }

    if (disableAllForThreeDay == true) {
      add(PrayNotificationSettingEvent.updateAllNotificationForThreeDay(
          status: disableAllForThreeDay));
    }
    if (disableAllForWeek == true) {
      add(PrayNotificationSettingEvent.updateAllNotificationForWeekDay(
          status: disableAllForWeek));
    }

    add(PrayNotificationSettingEvent.updateFajirNotification(
        status: disableFajr));

    add(PrayNotificationSettingEvent.updateDuhirNotification(
        status: disableDuher));

    add(PrayNotificationSettingEvent.updateAsrNotification(status: disableAsr));

    add(PrayNotificationSettingEvent.updateMagriebNotification(
        status: disableMagrieb));

    add(PrayNotificationSettingEvent.updateIshaNotification(
        status: disableIsha));

    add(PrayNotificationSettingEvent.updateAdkarNotification(
        status: disableAzkar));

    if (disableApplication == true) {
      add(PrayNotificationSettingEvent.updateApplicationNotification(
          status: disableApplication));
    }

    //TODO
  }

  String getLanguage() {
    return _box.get(DatabaseFieldConstant.selectedLanguage, defaultValue: "en");
  }

  List<PrayerNotification> allNotifications(BuildContext context) => [
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingAllowAll,
          notificationSelector: (state) => state.allowAllNotifications,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.updateAllowAllNotifications(
                  status: value),
        ),
      ];

  List<PrayerNotification> quickNotifications(BuildContext context) => [
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingTodayAll,
          notificationSelector: (state) => state.allNotificationForToday,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.updateAllNotificationForToday(
                  status: value),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingThreedayAll,
          notificationSelector: (state) => state.allNotificationForThreeDay,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.updateAllNotificationForThreeDay(
                  status: value),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingWeekAll,
          notificationSelector: (state) => state.allNotificationForWeekDay,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.updateAllNotificationForWeekDay(
                  status: value),
        ),
      ];

  List<PrayerNotification> prayerNotifications(BuildContext context) => [
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingFajir,
          notificationSelector: (state) => state.fajirNotification,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.updateFajirNotification(
                  status: value),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingDuher,
          notificationSelector: (state) => state.duhirNotification,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.updateDuhirNotification(
                  status: value),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingAsr,
          notificationSelector: (state) => state.asrNotification,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.updateAsrNotification(status: value),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingMagrieb,
          notificationSelector: (state) => state.magriebNotification,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.updateMagriebNotification(
                  status: value),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingIsha,
          notificationSelector: (state) => state.ishaNotification,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.updateIshaNotification(
                  status: value),
        ),
      ];

  List<PrayerNotification> otherNotifications(BuildContext context) => [
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingApplication,
          notificationSelector: (state) => state.adkarNotification,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.updateAdkarNotification(
                  status: value),
        ),
        PrayerNotification(
          title: AppLocalizations.of(context)!.notificationSettingAzkar,
          notificationSelector: (state) => state.adkarNotification,
          eventCreator: (value) =>
              PrayNotificationSettingEvent.updateAdkarNotification(
                  status: value),
        ),
      ];

  FutureOr<void> _updateAllowAllNotifications(
      _UpdateAllowAllNotifications event,
      Emitter<PrayNotificationSettingState> emit) {
    //TODO

    LocalNotificationService.showInstantNotification(
        "Instant Notification", "This shows an instant notifications");

    emit(state.copyWith(allowAllNotifications: event.status));
  }

  FutureOr<void> _updateAllNotificationForToday(
      _UpdateAllNotificationForToday event,
      Emitter<PrayNotificationSettingState> emit) async {
    await _box.put(LocalNotificationConstant.disableAllForToday, event.status);

    DateTime scheduledDate = DateTime.now().add(const Duration(seconds: 5));
    LocalNotificationService.scheduleNotification(
      0,
      "Scheduled Notification",
      "This notification is scheduled to appear after 5 seconds",
      scheduledDate,
    );
    //TODO
    emit(state.copyWith(allNotificationForToday: event.status));
  }

  FutureOr<void> _updateAllNotificationForThreeDay(
      _UpdateAllNotificationForThreeDay event,
      Emitter<PrayNotificationSettingState> emit) async {
    await _box.put(
        LocalNotificationConstant.disableAllForThreeDay, event.status);
    //TODO
    emit(state.copyWith(allNotificationForThreeDay: event.status));
  }

  FutureOr<void> _updateAllNotificationForWeekDay(
      _UpdateAllNotificationForWeekDay event,
      Emitter<PrayNotificationSettingState> emit) async {
    await _box.put(LocalNotificationConstant.disableAllForWeek, event.status);
    //TODO
    emit(state.copyWith(allNotificationForWeekDay: event.status));
  }

  FutureOr<void> _updateFajirNotification(_UpdateFajirNotification event,
      Emitter<PrayNotificationSettingState> emit) async {
    print("XXxxx ${event.status}");
    await _box.put(LocalNotificationConstant.disableFajr, event.status);

    //TODO
    emit(state.copyWith(fajirNotification: event.status));
  }

  FutureOr<void> _updateDuhirNotification(_UpdateDuhirNotification event,
      Emitter<PrayNotificationSettingState> emit) async {
    await _box.put(LocalNotificationConstant.disableDuher, event.status);

    //TODO
    emit(state.copyWith(duhirNotification: event.status));
  }

  FutureOr<void> _updateAsrNotification(_UpdateAsrNotification event,
      Emitter<PrayNotificationSettingState> emit) async {
    await _box.put(LocalNotificationConstant.disableAsr, event.status);

    //TODO
    emit(state.copyWith(asrNotification: event.status));
  }

  FutureOr<void> _updateMagriebNotification(_UpdateMagriebNotification event,
      Emitter<PrayNotificationSettingState> emit) async {
    await _box.put(LocalNotificationConstant.disableMagrieb, event.status);

    //TODO
    emit(state.copyWith(magriebNotification: event.status));
  }

  FutureOr<void> _updateIshaNotification(_UpdateIshaNotification event,
      Emitter<PrayNotificationSettingState> emit) async {
    await _box.put(LocalNotificationConstant.disableIsha, event.status);

    //TODO
    emit(state.copyWith(ishaNotification: event.status));
  }

  FutureOr<void> _updateLoadingStatus(_UpdateLoadingStatus event,
      Emitter<PrayNotificationSettingState> emit) async {
    //TODO
    emit(state.copyWith(loadingStatus: event.status));
  }

  FutureOr<void> _updateAdkarNotification(_UpdateAdkarNotification event,
      Emitter<PrayNotificationSettingState> emit) async {
    await _box.put(LocalNotificationConstant.disableAzkar, event.status);

    //TODO
    emit(state.copyWith(adkarNotification: event.status));
  }

  FutureOr<void> _updateApplicationNotification(
      _UpdateApplicationNotification event,
      Emitter<PrayNotificationSettingState> emit) async {
    await _box.put(LocalNotificationConstant.disableApplication, event.status);
    //TODO
    emit(state.copyWith(applicationNotification: event.status));
  }
}
