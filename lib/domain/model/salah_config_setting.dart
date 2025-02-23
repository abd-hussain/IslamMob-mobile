import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/sealed/salah_time_state.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
part 'salah_config_setting.freezed.dart';

@freezed
class SalahConfigSetting with _$SalahConfigSetting {
  factory SalahConfigSetting({
    required SalahTimeState salahType,
    required DateTime? Function(PrayCalculationSettingState) stateSelector,
  }) = _SalahConfigSetting;
}
