part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    LocationModel? location,
    @Default(LocationProcessState.idl()) LocationProcessState status,
  }) = _LocationState;
}

@freezed
sealed class LocationProcessState with _$LocationProcessState {
  const factory LocationProcessState.idl() = LocationProcessStateIdl;
  const factory LocationProcessState.loading() = LocationProcessStateLoading;
  const factory LocationProcessState.noPermission() =
      LocationProcessStateNoPermission;
  const factory LocationProcessState.havePermission() =
      LocationProcessStateHavePermission;
}
