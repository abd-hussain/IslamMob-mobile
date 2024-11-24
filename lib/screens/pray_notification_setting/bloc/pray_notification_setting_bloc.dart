import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/models/app_model/pray_notification_settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'pray_notification_setting_event.dart';
part 'pray_notification_setting_state.dart';
part 'pray_notification_setting_bloc.freezed.dart';

class PrayNotificationSettingBloc
    extends Bloc<PrayNotificationSettingEvent, PrayNotificationSettingState> {
  PrayNotificationSettingBloc() : super(const PrayNotificationSettingState()) {
    on<_UpdateAllowAllNotifications>(_updateAllowAllNotifications);
    on<_UpdateNextPrayNotification>(_updateNextPrayNotification);
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
    emit(state.copyWith(allowAllNotifications: event.status));
  }

  FutureOr<void> _updateAllNotificationForToday(
      _UpdateAllNotificationForToday event,
      Emitter<PrayNotificationSettingState> emit) {
    //TODO
    emit(state.copyWith(allNotificationForToday: event.status));
  }

  FutureOr<void> _updateNextPrayNotification(_UpdateNextPrayNotification event,
      Emitter<PrayNotificationSettingState> emit) {
    //TODO
    emit(state.copyWith(nextPrayNotification: event.status));
  }

  FutureOr<void> _updateAllNotificationForThreeDay(
      _UpdateAllNotificationForThreeDay event,
      Emitter<PrayNotificationSettingState> emit) {
    //TODO
    emit(state.copyWith(allNotificationForThreeDay: event.status));
  }

  FutureOr<void> _updateAllNotificationForWeekDay(
      _UpdateAllNotificationForWeekDay event,
      Emitter<PrayNotificationSettingState> emit) {
    //TODO
    emit(state.copyWith(allNotificationForWeekDay: event.status));
  }

  FutureOr<void> _updateFajirNotification(_UpdateFajirNotification event,
      Emitter<PrayNotificationSettingState> emit) {
    //TODO
    emit(state.copyWith(fajirNotification: event.status));
  }

  FutureOr<void> _updateDuhirNotification(_UpdateDuhirNotification event,
      Emitter<PrayNotificationSettingState> emit) {
    //TODO
    emit(state.copyWith(duhirNotification: event.status));
  }

  FutureOr<void> _updateAsrNotification(_UpdateAsrNotification event,
      Emitter<PrayNotificationSettingState> emit) {
    //TODO
    emit(state.copyWith(asrNotification: event.status));
  }

  FutureOr<void> _updateMagriebNotification(_UpdateMagriebNotification event,
      Emitter<PrayNotificationSettingState> emit) {
    //TODO
    emit(state.copyWith(magriebNotification: event.status));
  }

  FutureOr<void> _updateIshaNotification(_UpdateIshaNotification event,
      Emitter<PrayNotificationSettingState> emit) {
    //TODO
    emit(state.copyWith(ishaNotification: event.status));
  }

  FutureOr<void> _updateLoadingStatus(
      _UpdateLoadingStatus event, Emitter<PrayNotificationSettingState> emit) {
    //TODO
    emit(state.copyWith(loadingStatus: event.status));
  }

  FutureOr<void> _updateAdkarNotification(_UpdateAdkarNotification event,
      Emitter<PrayNotificationSettingState> emit) {
    //TODO
    emit(state.copyWith(adkarNotification: event.status));
  }
}
