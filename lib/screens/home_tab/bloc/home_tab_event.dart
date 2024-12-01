part of 'home_tab_bloc.dart';

@freezed
class HomeTabEvent with _$HomeTabEvent {
  factory HomeTabEvent.updateExpandedStatus(bool status) =
      _UpdateExpandedStatus;

  factory HomeTabEvent.updateShowingNotificationView(bool status) =
      _UpdateShowingNotificationView;

  factory HomeTabEvent.updateNextPrayType(SalahTimeState nextPrayType) =
      _UpdateNextPrayType;
}
