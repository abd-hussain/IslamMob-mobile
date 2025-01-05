import 'package:islam_app/domain/sealed/madhab.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'madhab_setting.freezed.dart';

@freezed
class MadhabSetting with _$MadhabSetting {
  factory MadhabSetting({
    required String name,
    required MadhabState method,
    required bool isSelected,
  }) = _MadhabSetting;
}
