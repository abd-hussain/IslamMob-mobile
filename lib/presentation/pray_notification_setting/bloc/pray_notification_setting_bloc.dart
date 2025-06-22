import 'dart:async';

import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/domain/usecase/setup_local_notification_when_app_open_usecase.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/notification_type_sealed.dart';

part 'pray_notification_setting_bloc.freezed.dart';
part 'pray_notification_setting_event.dart';
part 'pray_notification_setting_state.dart';

/// BLoC for managing prayer notification settings.
///
/// This BLoC handles the state management for prayer notification settings,
/// including loading current settings, updating individual notification
/// preferences, and saving changes to persistent storage. It manages
/// notifications for all five daily prayers and special Islamic events.
class PrayNotificationSettingBloc
    extends Bloc<PrayNotificationSettingEvent, PrayNotificationSettingState> {
  /// Creates a [PrayNotificationSettingBloc] and initializes event handlers.
  ///
  /// Sets up event handlers for initializing settings, changing individual
  /// notification preferences, and saving settings to storage.
  PrayNotificationSettingBloc() : super(const PrayNotificationSettingState()) {
    on<_InitialPrayNotificationSettings>(_onInitialize);
    on<_ChangePrayNotificationSettings>(_onChangeSetting);
    on<_SavePrayNotificationSettings>(_onSaveSettings);
  }

  FutureOr<void> _onInitialize(
    _InitialPrayNotificationSettings event,
    Emitter<PrayNotificationSettingState> emit,
  ) {
    final get = _getValue;

    emit(
      state.copyWith(
        allNotificationForToday: get(
          LocalNotificationConstant.disableAllForToday,
          false,
        ),
        allNotificationForThreeDay: get(
          LocalNotificationConstant.disableAllForThreeDay,
          false,
        ),
        allNotificationForWeekDay: get(
          LocalNotificationConstant.disableAllForWeek,
          false,
        ),
        fajir: get(LocalNotificationConstant.disableFajr, true),
        duhir: get(LocalNotificationConstant.disableDuher, true),
        asr: get(LocalNotificationConstant.disableAsr, true),
        magrieb: get(LocalNotificationConstant.disableMagrieb, true),
        isha: get(LocalNotificationConstant.disableIsha, true),
        sunriseTime: get(LocalNotificationConstant.disableSunriseTime, true),
        jom3aAlkahf: get(LocalNotificationConstant.disableJom3aAlkahf, true),
        jom3aDo3aa: get(LocalNotificationConstant.disableJom3aDo3aa, true),
        before15Min: get(
          LocalNotificationConstant.disableNotificationBefore15Min,
          true,
        ),
        qeyamAlLayel: get(LocalNotificationConstant.disableQeyamAlLayel, true),
        loadingStatus: const PrayNotificationSettingProcessStateSuccess(),
      ),
    );
  }

  FutureOr<void> _onChangeSetting(
    _ChangePrayNotificationSettings event,
    Emitter<PrayNotificationSettingState> emit,
  ) async {
    await FirebaseAnalyticsRepository.logEvent(
      name: "changePrayNotificationSettings",
      parameters: {"state": event.status, "type": event.type.toString()},
    );

    final stateUpdater =
        <PrayNotificationTypeState, PrayNotificationSettingState Function()>{
          const AllNotificationForToday(): () =>
              state.copyWith(allNotificationForToday: event.status),
          const AllNotificationForThreeDay(): () =>
              state.copyWith(allNotificationForThreeDay: event.status),
          const AllNotificationForWeekDay(): () =>
              state.copyWith(allNotificationForWeekDay: event.status),
          const Fajir(): () => state.copyWith(fajir: event.status),
          const Duhir(): () => state.copyWith(duhir: event.status),
          const Asr(): () => state.copyWith(asr: event.status),
          const Magrieb(): () => state.copyWith(magrieb: event.status),
          const Isha(): () => state.copyWith(isha: event.status),
          const SunriseTime(): () => state.copyWith(sunriseTime: event.status),
          const Jom3aAlkahf(): () => state.copyWith(jom3aAlkahf: event.status),
          const Jom3aDo3aa(): () => state.copyWith(jom3aDo3aa: event.status),
          const Before15Min(): () => state.copyWith(before15Min: event.status),
          const QeyamAlLayel(): () =>
              state.copyWith(qeyamAlLayel: event.status),
        };

    final newState = stateUpdater[event.type]?.call();
    if (newState != null) emit(newState);
  }

  FutureOr<void> _onSaveSettings(
    _SavePrayNotificationSettings event,
    Emitter<PrayNotificationSettingState> emit,
  ) async {
    await DataBaseManagerBase.saveMultipleInDatabase(
      data: {
        LocalNotificationConstant.disableAllForToday:
            state.allNotificationForToday,
        LocalNotificationConstant.disableAllForThreeDay:
            state.allNotificationForThreeDay,
        LocalNotificationConstant.disableAllForWeek:
            state.allNotificationForWeekDay,
        LocalNotificationConstant.disableFajr: state.fajir,
        LocalNotificationConstant.disableDuher: state.duhir,
        LocalNotificationConstant.disableAsr: state.asr,
        LocalNotificationConstant.disableMagrieb: state.magrieb,
        LocalNotificationConstant.disableIsha: state.isha,
        LocalNotificationConstant.disableSunriseTime: state.sunriseTime,
        LocalNotificationConstant.disableJom3aAlkahf: state.jom3aAlkahf,
        LocalNotificationConstant.disableJom3aDo3aa: state.jom3aDo3aa,
        LocalNotificationConstant.disableNotificationBefore15Min:
            state.before15Min,
        LocalNotificationConstant.disableQeyamAlLayel: state.qeyamAlLayel,
      },
    );

    if (event.context.mounted) {
      await locator<SetupLocalNotificationWhenAppOpenUseCase>().call(
        context: event.context,
      );
    }

    emit(
      state.copyWith(
        loadingStatus: const PrayNotificationSettingProcessStateSettingSaved(),
      ),
    );
  }

  /// Gets the localized name of the notification sound for a specific prayer type.
  ///
  /// This method retrieves the currently selected sound for the given prayer
  /// type from the database and returns its localized display name.
  ///
  /// The [localization] parameter provides access to localized strings.
  /// The [type] parameter specifies which prayer type to get the sound name for.
  ///
  /// Returns the localized sound name, or "unknown" if the sound is not found.
  String getSoundName({
    required IslamMobLocalizations localization,
    required NotificationTypeState type,
  }) {
    final soundMap = {
      const NotificationTypeState.fajir():
          DatabaseNotificationSoundConstant.fajirNotification,
      const NotificationTypeState.zuhr():
          DatabaseNotificationSoundConstant.zhurNotification,
      const NotificationTypeState.asr():
          DatabaseNotificationSoundConstant.asrNotification,
      const NotificationTypeState.maghrib():
          DatabaseNotificationSoundConstant.maghribNotification,
      const NotificationTypeState.isha():
          DatabaseNotificationSoundConstant.ishaNotification,
    };

    final defaultMap = {
      const NotificationTypeState.fajir(): "adhan1",
      const NotificationTypeState.zuhr(): "adhan2",
      const NotificationTypeState.asr(): "adhan3",
      const NotificationTypeState.maghrib(): "adhan4",
      const NotificationTypeState.isha(): "adhan5",
    };

    final path = DataBaseManagerBase.getFromDatabase(
      key: soundMap[type]!,
      defaultValue: defaultMap[type],
    );

    final soundNameMap = {
      "adhan1": localization.adhan1,
      "adhan2": localization.adhan2,
      "adhan3": localization.adhan3,
      "adhan4": localization.adhan4,
      "adhan5": localization.adhan5,
      "adhan6": localization.adhan6,
      "adhan7": localization.adhan7,
      "adhan8": localization.adhan8,
      "adhan9": localization.adhan9,
    };

    return soundNameMap[path] ?? localization.unknown;
  }

  T _getValue<T>(String key, T defaultValue) {
    return DataBaseManagerBase.getFromDatabase(
          key: key,
          defaultValue: defaultValue,
        )
        as T;
  }
}
