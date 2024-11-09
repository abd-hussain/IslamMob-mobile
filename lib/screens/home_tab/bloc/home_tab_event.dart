part of 'home_tab_bloc.dart';

@freezed
class HomeTabEvent with _$HomeTabEvent {
  factory HomeTabEvent.updateExpandedStatus(bool status) =
      _UpdateExpandedStatus;
}
