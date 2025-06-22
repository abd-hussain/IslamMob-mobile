import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_manager/database_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/model/notification_sound.dart';
import 'package:islam_app/domain/sealed/local_notification.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';

part 'choose_sound_bloc.freezed.dart';
part 'choose_sound_event.dart';
part 'choose_sound_state.dart';

/// BLoC for managing notification sound selection and configuration.
///
/// This BLoC handles the business logic for choosing and saving notification sounds
/// for different prayer times (Fajr, Zuhr, Asr, Maghrib, Isha). It manages:
///
/// - Loading available notification sounds with localized names
/// - Retrieving currently selected sounds from persistent storage
/// - Temporarily updating sound selection during user interaction
/// - Saving final sound choices to the database
///
/// The BLoC provides a list of predefined Adhan sounds (adhan1 through adhan9)
/// and maintains the current selection state for each prayer notification type.
/// Sound preferences are persisted using the database manager and can be
/// retrieved when the app restarts.
class ChooseSoundBloc extends Bloc<ChooseSoundEvent, ChooseSoundState> {
  /// Creates a new [ChooseSoundBloc] instance.
  ///
  /// Initializes the BLoC with default state and sets up event handlers
  /// for sound initialization, selection changes, and saving preferences.
  ChooseSoundBloc() : super(const ChooseSoundState()) {
    on<_InitialNotificationSoundSettings>(_initialNotificationSoundSettings);
    on<_ChangeNotificationSoundSettings>(_changeNotificationSoundSettings);
    on<_SaveChanges>(_saveChanges);
  }

  FutureOr<void> _initialNotificationSoundSettings(
    _InitialNotificationSoundSettings event,
    Emitter<ChooseSoundState> emit,
  ) {
    emit(
      state.copyWith(
        notificationSounds: [
          NotificationSound(
            name: event.localization.adhan1,
            soundFileName: "adhan1",
          ),
          NotificationSound(
            name: event.localization.adhan2,
            soundFileName: "adhan2",
          ),
          NotificationSound(
            name: event.localization.adhan3,
            soundFileName: "adhan3",
          ),
          NotificationSound(
            name: event.localization.adhan4,
            soundFileName: "adhan4",
          ),
          NotificationSound(
            name: event.localization.adhan5,
            soundFileName: "adhan5",
          ),
          NotificationSound(
            name: event.localization.adhan6,
            soundFileName: "adhan6",
          ),
          NotificationSound(
            name: event.localization.adhan7,
            soundFileName: "adhan7",
          ),
          NotificationSound(
            name: event.localization.adhan8,
            soundFileName: "adhan8",
          ),
          NotificationSound(
            name: event.localization.adhan9,
            soundFileName: "adhan9",
          ),
        ],
        selectedSound: _getSelectedNotificationSoundFile(event.type),
      ),
    );
  }

  String _getSelectedNotificationSoundFile(NotificationTypeState type) {
    switch (type) {
      case const NotificationTypeState.fajir():
        return DataBaseManagerBase.getFromDatabase(
              key: DatabaseNotificationSoundConstant.fajirNotification,
              defaultValue: "adhan1",
            )
            as String;
      case const NotificationTypeState.zuhr():
        return DataBaseManagerBase.getFromDatabase(
              key: DatabaseNotificationSoundConstant.zhurNotification,
              defaultValue: "adhan2",
            )
            as String;
      case const NotificationTypeState.asr():
        return DataBaseManagerBase.getFromDatabase(
              key: DatabaseNotificationSoundConstant.asrNotification,
              defaultValue: "adhan3",
            )
            as String;
      case const NotificationTypeState.maghrib():
        return DataBaseManagerBase.getFromDatabase(
              key: DatabaseNotificationSoundConstant.maghribNotification,
              defaultValue: "adhan4",
            )
            as String;
      case const NotificationTypeState.isha():
        return DataBaseManagerBase.getFromDatabase(
              key: DatabaseNotificationSoundConstant.ishaNotification,
              defaultValue: "adhan5",
            )
            as String;
      default:
        return "";
    }
  }

  FutureOr<void> _changeNotificationSoundSettings(
    _ChangeNotificationSoundSettings event,
    Emitter<ChooseSoundState> emit,
  ) {
    emit(state.copyWith(selectedSound: event.soundFileName));
  }

  FutureOr<void> _saveChanges(
    _SaveChanges event,
    Emitter<ChooseSoundState> emit,
  ) async {
    switch (event.type) {
      case const NotificationTypeState.fajir():
        await DataBaseManagerBase.saveInDatabase(
          key: DatabaseNotificationSoundConstant.fajirNotification,
          value: state.selectedSound,
        );
      case const NotificationTypeState.zuhr():
        await DataBaseManagerBase.saveInDatabase(
          key: DatabaseNotificationSoundConstant.zhurNotification,
          value: state.selectedSound,
        );
      case const NotificationTypeState.asr():
        await DataBaseManagerBase.saveInDatabase(
          key: DatabaseNotificationSoundConstant.asrNotification,
          value: state.selectedSound,
        );
      case const NotificationTypeState.maghrib():
        await DataBaseManagerBase.saveInDatabase(
          key: DatabaseNotificationSoundConstant.maghribNotification,
          value: state.selectedSound,
        );
      case const NotificationTypeState.isha():
        await DataBaseManagerBase.saveInDatabase(
          key: DatabaseNotificationSoundConstant.ishaNotification,
          value: state.selectedSound,
        );
      default:
        return;
    }
  }
}
