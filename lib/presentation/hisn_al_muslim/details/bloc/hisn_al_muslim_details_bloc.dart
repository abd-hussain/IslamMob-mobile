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

/// BLoC for managing Hisn Al-Muslim supplication details and interactions.
///
/// This BLoC handles the business logic for the detailed view of Islamic
/// supplications from Hisn Al-Muslim (Fortress of the Muslim), a renowned
/// collection of authentic Islamic prayers and remembrances. It manages:
/// - **Supplication display** with Arabic text and translations
/// - **Favorite management** for bookmarking important supplications
/// - **Content sharing** via social platforms and messaging
/// - **Language direction** for proper Arabic and RTL text display
///
/// Hisn Al-Muslim contains essential Islamic supplications for daily life,
/// including prayers for morning/evening, travel, eating, sleeping, and
/// various life situations. This BLoC ensures proper presentation and
/// interaction with these sacred Islamic texts.
class HisnAlMuslimDetailsBloc
    extends Bloc<HisnAlMuslimDetailsEvent, HisnAlMuslimDetailsState> {
  /// Creates a [HisnAlMuslimDetailsBloc] with initial state and event handlers.
  ///
  /// Initializes the BLoC with empty supplication details state and sets up
  /// event handlers for displaying supplications, managing favorites, and
  /// sharing Islamic content with others.
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
        key: DatabaseFieldConstant.userLanguageCode,
        defaultValue: "en") as String;
    return languageCode == "ar" || languageCode == "fa";
  }
}
