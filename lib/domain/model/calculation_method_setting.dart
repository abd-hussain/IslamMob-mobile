import 'package:islam_app/domain/model/pray_calculation_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'calculation_method_setting.freezed.dart';

@freezed
class CalculationMethodSetting with _$CalculationMethodSetting {
  factory CalculationMethodSetting({
    required String name,
    required PrayCalculationMethodState method,
    required bool isSelected,
  }) = _CalculationMethodSetting;
}
