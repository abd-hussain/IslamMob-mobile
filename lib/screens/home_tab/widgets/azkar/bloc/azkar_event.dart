part of 'azkar_bloc.dart';

@freezed
class AzkarEvent with _$AzkarEvent {
  factory AzkarEvent.updateShowingAzkarStatus(bool status) =
      _UpdateShowingAzkarStatus;

  factory AzkarEvent.updateListOfAzkar(List<String> list) = _UpdateListOfAzkar;
}
