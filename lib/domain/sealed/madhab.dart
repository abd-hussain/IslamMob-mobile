import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed/madhab.freezed.dart';

@freezed
sealed class MadhabState with _$MadhabState {
  const factory MadhabState.hanafi() = MadhabStateHanafi;
  const factory MadhabState.shafi() = MadhabStateShafi;
}
