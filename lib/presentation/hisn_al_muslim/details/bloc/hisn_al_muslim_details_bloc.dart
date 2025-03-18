import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:database_manager/database_manager.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/constants/app_constant.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/domain/usecase/hisn_al_muslim_usecase.dart';
import 'package:share_plus/share_plus.dart';

part 'hisn_al_muslim_details_bloc.freezed.dart';
part 'hisn_al_muslim_details_event.dart';
part 'hisn_al_muslim_details_state.dart';

class HisnAlMuslimDetailsBloc
    extends Bloc<HisnAlMuslimDetailsEvent, HisnAlMuslimDetailsState> {
  HisnAlMuslimDetailsBloc() : super(const HisnAlMuslimDetailsState()) {
    on<_FillInitialValue>(_fillInitialValue);
    on<_UpdateFavoriteItem>(_updateFavoriteItem);
    on<_UpdateTextToShare>(_updateTextToShare);
    on<_ShareItem>(_shareItem);
  }

  FutureOr<void> _fillInitialValue(
      _FillInitialValue event, Emitter<HisnAlMuslimDetailsState> emit) {
    emit(state.copyWith(item: event.item, isRtlLanguage: _isRtlLanguage()));
  }

  FutureOr<void> _updateFavoriteItem(
      _UpdateFavoriteItem event, Emitter<HisnAlMuslimDetailsState> emit) {
    if (state.item != null) {
      final HisnAlMuslimModel newItem =
          state.item!.copyWith(isFavorite: !state.item!.isFavorite);
      HisnAlMuslimUseCase.addRemoveNewItemToFavoriteList(newItem.id);
      emit(state.copyWith(item: newItem));
    }
  }

  FutureOr<void> _updateTextToShare(
      _UpdateTextToShare event, Emitter<HisnAlMuslimDetailsState> emit) {
    emit(state.copyWith(textToShare: event.description));
  }

  FutureOr<void> _shareItem(
      _ShareItem event, Emitter<HisnAlMuslimDetailsState> emit) async {
    const String downloadLink =
        "Android : ${AppConstant.androidAppLink} \n iOS : ${AppConstant.iOSAppLink}"; // Replace with actual download link

    final String textToShare = "${state.textToShare}\n\n $downloadLink";

    await Share.share(
      textToShare,
      subject: event.title,
    );
  }

  bool _isRtlLanguage() {
    final String languageCode = DataBaseManagerBase.getFromDatabase(
        key: DatabaseFieldConstant.userLanguageCode, defaultValue: "en");
    return languageCode == "ar" || languageCode == "fa";
  }
}
