part of 'estekara_bloc.dart';

@freezed
class EstekaraState with _$EstekaraState {
  const factory EstekaraState({
    @Default([]) List<EstekaraData> listOfItems,
    @Default(false) bool isRtlLanguage,
  }) = _EstekaraState;
}
