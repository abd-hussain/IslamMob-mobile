import 'dart:async';

import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/usecase/setup_local_notification_when_app_open_usecase.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/notification_type_enum.dart';

part 'pray_notification_setting_event.dart';
part 'pray_notification_setting_state.dart';
part 'pray_notification_setting_bloc.freezed.dart';

class PrayNotificationSettingBloc
    extends Bloc<PrayNotificationSettingEvent, PrayNotificationSettingState> {
  PrayNotificationSettingBloc() : super(const PrayNotificationSettingState()) {
    on<_InitialPrayNotificationSettings>(_initialPrayNotificationSettings);
    on<_ChangePrayNotificationSettings>(_changePrayNotificationSettings);
  }

  FutureOr<void> _initialPrayNotificationSettings(
      _InitialPrayNotificationSettings event,
      Emitter<PrayNotificationSettingState> emit) {
    final disableAllForToday = DataBaseManagerBase.getFromDatabase(
        key: LocalNotificationConstant.disableAllForToday, defaultValue: false);
    final disableAllForThreeDay = DataBaseManagerBase.getFromDatabase(
        key: LocalNotificationConstant.disableAllForThreeDay,
        defaultValue: false);
    final disableAllForWeek = DataBaseManagerBase.getFromDatabase(
        key: LocalNotificationConstant.disableAllForWeek, defaultValue: false);
    final disableFajr = DataBaseManagerBase.getFromDatabase(
        key: LocalNotificationConstant.disableFajr, defaultValue: true);
    final disableDuher = DataBaseManagerBase.getFromDatabase(
        key: LocalNotificationConstant.disableDuher, defaultValue: true);
    final disableAsr = DataBaseManagerBase.getFromDatabase(
        key: LocalNotificationConstant.disableAsr, defaultValue: true);
    final disableMagrieb = DataBaseManagerBase.getFromDatabase(
        key: LocalNotificationConstant.disableMagrieb, defaultValue: true);
    final disableIsha = DataBaseManagerBase.getFromDatabase(
        key: LocalNotificationConstant.disableIsha, defaultValue: true);
    final disableSunriseTime = DataBaseManagerBase.getFromDatabase(
        key: LocalNotificationConstant.disableSunriseTime, defaultValue: true);
    final disableJom3aAlkahf = DataBaseManagerBase.getFromDatabase(
        key: LocalNotificationConstant.disableJom3aAlkahf, defaultValue: true);
    final disableJom3aDo3aa = DataBaseManagerBase.getFromDatabase(
        key: LocalNotificationConstant.disableJom3aDo3aa, defaultValue: true);
    final disableNotificationBefore15Min = DataBaseManagerBase.getFromDatabase(
        key: LocalNotificationConstant.disableNotificationBefore15Min,
        defaultValue: true);
    final disableQeyamAlLayel = DataBaseManagerBase.getFromDatabase(
        key: LocalNotificationConstant.disableQeyamAlLayel, defaultValue: true);

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
        jom3aAlkahf: disableJom3aAlkahf,
        jom3aDo3aa: disableJom3aDo3aa,
        qeyamAlLayel: disableQeyamAlLayel,
        before15Min: disableNotificationBefore15Min,
      ),
    );
  }

  FutureOr<void> _changePrayNotificationSettings(
      _ChangePrayNotificationSettings event,
      Emitter<PrayNotificationSettingState> emit) async {
    await FirebaseAnalyticsRepository.logEvent(
      name: "changePrayNotificationSettings",
      parameters: {
        "state": event.status,
        "type": event.type.toString(),
      },
    );

    switch (event.type) {
      case PrayNotificationType.allNotificationForToday:
        await DataBaseManagerBase.saveInDatabase(
            key: LocalNotificationConstant.disableAllForToday,
            value: event.status);
        emit(state.copyWith(allNotificationForToday: event.status));
      case PrayNotificationType.allNotificationForThreeDay:
        await DataBaseManagerBase.saveInDatabase(
            key: LocalNotificationConstant.disableAllForThreeDay,
            value: event.status);
        emit(state.copyWith(allNotificationForThreeDay: event.status));
      case PrayNotificationType.allNotificationForWeekDay:
        await DataBaseManagerBase.saveInDatabase(
            key: LocalNotificationConstant.disableAllForWeek,
            value: event.status);
        emit(state.copyWith(allNotificationForWeekDay: event.status));
      case PrayNotificationType.fajir:
        await DataBaseManagerBase.saveInDatabase(
            key: LocalNotificationConstant.disableFajr, value: event.status);
        emit(state.copyWith(fajir: event.status));
      case PrayNotificationType.duhir:
        await DataBaseManagerBase.saveInDatabase(
            key: LocalNotificationConstant.disableDuher, value: event.status);
        emit(state.copyWith(duhir: event.status));
      case PrayNotificationType.asr:
        await DataBaseManagerBase.saveInDatabase(
            key: LocalNotificationConstant.disableAsr, value: event.status);
        emit(state.copyWith(asr: event.status));
      case PrayNotificationType.magrieb:
        await DataBaseManagerBase.saveInDatabase(
            key: LocalNotificationConstant.disableMagrieb, value: event.status);
        emit(state.copyWith(magrieb: event.status));
      case PrayNotificationType.isha:
        await DataBaseManagerBase.saveInDatabase(
            key: LocalNotificationConstant.disableIsha, value: event.status);
        emit(state.copyWith(isha: event.status));
      case PrayNotificationType.sunriseTime:
        await DataBaseManagerBase.saveInDatabase(
            key: LocalNotificationConstant.disableSunriseTime,
            value: event.status);
        emit(state.copyWith(sunriseTime: event.status));
      case PrayNotificationType.jom3aAlkahf:
        await DataBaseManagerBase.saveInDatabase(
            key: LocalNotificationConstant.disableJom3aAlkahf,
            value: event.status);
        emit(state.copyWith(jom3aAlkahf: event.status));
      case PrayNotificationType.jom3aDo3aa:
        await DataBaseManagerBase.saveInDatabase(
            key: LocalNotificationConstant.disableJom3aDo3aa,
            value: event.status);
        emit(state.copyWith(jom3aDo3aa: event.status));
      case PrayNotificationType.before15Min:
        await DataBaseManagerBase.saveInDatabase(
            key: LocalNotificationConstant.disableNotificationBefore15Min,
            value: event.status);
        emit(state.copyWith(before15Min: event.status));
      case PrayNotificationType.qeyamAlLayel:
        await DataBaseManagerBase.saveInDatabase(
            key: LocalNotificationConstant.disableQeyamAlLayel,
            value: event.status);
        emit(state.copyWith(qeyamAlLayel: event.status));
    }

    await SetupLocalNotificationWhenAppOpenUseCase()
        // ignore: use_build_context_synchronously
        .call(context: event.context);
  }
}
