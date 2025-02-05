import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_sealed.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
part 'freezed/correction_min_time.freezed.dart';

@freezed
class CorrectionMinTimeData with _$CorrectionMinTimeData {
  factory CorrectionMinTimeData({
    required String title,
    required AzanTypeForEditMinState type,
    required int Function(PrayCalculationSettingState state) getter,
  }) = _CorrectionMinTimeData;
}
