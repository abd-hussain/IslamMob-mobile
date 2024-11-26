part of 'azkar_bloc.dart';

@freezed
class AzkarEvent with _$AzkarEvent {
  factory AzkarEvent.updateShowingAzkarStatus(bool status) =
      _UpdateShowingAzkarStatus;

  factory AzkarEvent.updateCounter1Status(int value) = _UpdateCounter1Status;
  factory AzkarEvent.updateCounter2Status(int value) = _UpdateCounter2Status;
  factory AzkarEvent.updateCounter3Status(int value) = _UpdateCounter3Status;
  factory AzkarEvent.updateCounter4Status(int value) = _UpdateCounter4Status;
  factory AzkarEvent.updateCounter5Status(int value) = _UpdateCounter5Status;
  factory AzkarEvent.updateCounter6Status(int value) = _UpdateCounter6Status;
  factory AzkarEvent.updateCounter7Status(int value) = _UpdateCounter7Status;
  factory AzkarEvent.updateCounter8Status(int value) = _UpdateCounter8Status;
  factory AzkarEvent.updateCounter9Status(int value) = _UpdateCounter9Status;
  factory AzkarEvent.updateCounter10Status(int value) = _UpdateCounter10Status;
  factory AzkarEvent.updateCounter11Status(int value) = _UpdateCounter11Status;
}
