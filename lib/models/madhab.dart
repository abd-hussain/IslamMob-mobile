import 'package:freezed_annotation/freezed_annotation.dart';

part 'madhab.freezed.dart';

@freezed
sealed class MathhabState with _$MathhabState {
  const factory MathhabState.hanafi() = MathhabStateHanafi;
  const factory MathhabState.shafi() = MathhabStateShafi;
}
