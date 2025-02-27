import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hisn_al_muslim_details_event.dart';
part 'hisn_al_muslim_details_state.dart';
part 'hisn_al_muslim_details_bloc.freezed.dart';

class HisnAlMuslimDetailsBloc
    extends Bloc<HisnAlMuslimDetailsEvent, HisnAlMuslimDetailsState> {
  HisnAlMuslimDetailsBloc() : super(_Initial()) {
    on<HisnAlMuslimDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
