import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/models/high_latitude_method.dart';
import 'package:islam_app/models/madhab.dart';
import 'package:islam_app/models/pray_calculation_method.dart';
part 'pray_country_setting.freezed.dart';

@freezed
class PrayCountrySetting with _$PrayCountrySetting {
  factory PrayCountrySetting({
    required String countryCode,
    required MadhabState madhab,
    required PrayCalculationMethodState calculationMethod,
    required PrayHightLatitudeCaluclationState hightLatitudeCaluclationState,
  }) = _PrayCountrySetting;
}