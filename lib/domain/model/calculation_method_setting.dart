import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/sealed/pray_calculation_method.dart';

part 'freezed/calculation_method_setting.freezed.dart';

@freezed
class CalculationMethodSetting with _$CalculationMethodSetting {
  factory CalculationMethodSetting({
    required String name,
    required PrayCalculationMethodState method,
    required bool isSelected,
  }) = _CalculationMethodSetting;
}
