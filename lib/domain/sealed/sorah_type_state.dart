import 'package:freezed_annotation/freezed_annotation.dart';
part 'sorah_type_state.freezed.dart';

@freezed
sealed class SowrahTypeState with _$SowrahTypeState {
  const factory SowrahTypeState.makyeh() = SowrahTypeStateMakyeh;
  const factory SowrahTypeState.madanyeh() = SowrahTypeStateMadanyeh;
}
