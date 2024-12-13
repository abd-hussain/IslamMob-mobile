import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/notification_type_enum.dart';
import 'package:islam_app/core/constants/database_constant.dart';

part 'pray_notification_setting_event.dart';
part 'pray_notification_setting_state.dart';
part 'pray_notification_setting_bloc.freezed.dart';

class PrayNotificationSettingBloc
    extends Bloc<PrayNotificationSettingEvent, PrayNotificationSettingState> {
  final _box = Hive.box(DatabaseBoxConstant.userInfo);

  PrayNotificationSettingBloc() : super(const PrayNotificationSettingState()) {
    on<_InitialPrayNotificationSettings>(_initialPrayNotificationSettings);
    on<_ChangePrayNotificationSettings>(_changePrayNotificationSettings);
  }

  FutureOr<void> _initialPrayNotificationSettings(
      _InitialPrayNotificationSettings event,
      Emitter<PrayNotificationSettingState> emit) {
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
    final disableSunriseTime = _box
        .get(LocalNotificationConstant.disableSunriseTime, defaultValue: true);
    final disableSunrisePray = _box
        .get(LocalNotificationConstant.disableSunrisePray, defaultValue: true);
    final disableNotificationBefore15Min = _box.get(
        LocalNotificationConstant.disableNotificationBefore15Min,
        defaultValue: true);
    final disablePushNotifications = _box.get(
        LocalNotificationConstant.disablePushNotifications,
        defaultValue: true);

    emit(
      state.copyWith(
        allNotificationForToday: disableAllForToday,
        allNotificationForThreeDay: disableAllForThreeDay,
        allNotificationForWeekDay: disableAllForWeek,
        fajir: disableFajr,
        duhir: disableDuher,
        asr: disableAsr,
        magrieb: disableMagrieb,
        isha: disableIsha,
        sunriseTime: disableSunriseTime,
        sunrisePray: disableSunrisePray,
        before15Min: disableNotificationBefore15Min,
        applicationNotification: disablePushNotifications,
      ),
    );
  }

  FutureOr<void> _changePrayNotificationSettings(
      _ChangePrayNotificationSettings event,
      Emitter<PrayNotificationSettingState> emit) async {
    switch (event.type) {
      case PrayNotificationType.allNotificationForToday:
        await _box.put(
            LocalNotificationConstant.disableAllForToday, event.status);
        emit(state.copyWith(allNotificationForToday: event.status));
      case PrayNotificationType.allNotificationForThreeDay:
        await _box.put(
            LocalNotificationConstant.disableAllForThreeDay, event.status);
        emit(state.copyWith(allNotificationForThreeDay: event.status));
      case PrayNotificationType.allNotificationForWeekDay:
        await _box.put(
            LocalNotificationConstant.disableAllForWeek, event.status);
        emit(state.copyWith(allNotificationForWeekDay: event.status));
      case PrayNotificationType.fajir:
        await _box.put(LocalNotificationConstant.disableFajr, event.status);
        emit(state.copyWith(fajir: event.status));
      case PrayNotificationType.duhir:
        await _box.put(LocalNotificationConstant.disableDuher, event.status);
        emit(state.copyWith(duhir: event.status));
      case PrayNotificationType.asr:
        await _box.put(LocalNotificationConstant.disableAsr, event.status);
        emit(state.copyWith(asr: event.status));
      case PrayNotificationType.magrieb:
        await _box.put(LocalNotificationConstant.disableMagrieb, event.status);
        emit(state.copyWith(magrieb: event.status));
      case PrayNotificationType.isha:
        await _box.put(LocalNotificationConstant.disableIsha, event.status);
        emit(state.copyWith(isha: event.status));
      case PrayNotificationType.sunriseTime:
        await _box.put(
            LocalNotificationConstant.disableSunriseTime, event.status);
        emit(state.copyWith(sunriseTime: event.status));
      case PrayNotificationType.sunrisePray:
        await _box.put(
            LocalNotificationConstant.disableSunrisePray, event.status);
        emit(state.copyWith(sunrisePray: event.status));
      case PrayNotificationType.before15Min:
        await _box.put(LocalNotificationConstant.disableNotificationBefore15Min,
            event.status);
        emit(state.copyWith(before15Min: event.status));
      case PrayNotificationType.pushNotification:
        await _box.put(
            LocalNotificationConstant.disablePushNotifications, event.status);
        emit(state.copyWith(applicationNotification: event.status));
    }
  }
}
