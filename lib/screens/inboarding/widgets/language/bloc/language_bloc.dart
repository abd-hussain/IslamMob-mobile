import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/models/app_model/language.dart';

part 'language_event.dart';
part 'language_state.dart';
part 'language_bloc.freezed.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(const LanguageState()) {
    on<_ChangeSelectedLanguage>(_changeSelectedLanguage);
  }

  void _changeSelectedLanguage(
      _ChangeSelectedLanguage event, Emitter<LanguageState> emit) {
    emit(state.copyWith(selectedLanguage: event.type));
  }
}
