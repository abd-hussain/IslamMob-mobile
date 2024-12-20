import 'package:freezed_annotation/freezed_annotation.dart';

part 'high_latitude_method.freezed.dart';

@freezed
sealed class PrayHightLatitudeCaluclationState
    with _$PrayHightLatitudeCaluclationState {
  const factory PrayHightLatitudeCaluclationState.none() =
      PrayHightLatitudeCaluclationStateNone;
  const factory PrayHightLatitudeCaluclationState.angleBasedMethod() =
      PrayHightLatitudeCaluclationStateAngleBasedMethod;
  const factory PrayHightLatitudeCaluclationState.midnight() =
      PrayHightLatitudeCaluclationStateMidnight;
  const factory PrayHightLatitudeCaluclationState.seventhPartOfTheNight() =
      PrayHightLatitudeCaluclationStateSeventhPartOfTheNight;
}
