import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qibla_finder_event.dart';
part 'qibla_finder_state.dart';
part 'qibla_finder_bloc.freezed.dart';

class QiblaFinderBloc extends Bloc<QiblaFinderEvent, QiblaFinderState> {
  QiblaFinderBloc() : super(const QiblaFinderState()) {
    on<_QiblaFinderSetup>(_qiblaFinderSetup);
  }

  FutureOr<void> _qiblaFinderSetup(
      _QiblaFinderSetup event, Emitter<QiblaFinderState> emit) {}
}
