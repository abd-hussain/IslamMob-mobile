import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:islam_app/utils/constants/database_constant.dart';

part 'home_tab_event.dart';
part 'home_tab_state.dart';
part 'home_tab_bloc.freezed.dart';

enum SalahType {
  fajr,
  sunrise,
  zhur,
  asr,
  maghrib,
  isha,
}

class HomeTabBloc extends Bloc<HomeTabEvent, HomeTabState> {
  final ScrollController scrollController = ScrollController();

  HomeTabBloc() : super(const HomeTabState()) {
    on<_UpdateExpandedStatus>(_updateExpandedStatus);
    scrollController.addListener(_scrollListener);
  }
  final Box _box = Hive.box(DatabaseBoxConstant.userInfo);

  void _scrollListener() {
    // Adjust this value based on your SliverAppBar expanded height
    double expandedHeight = 250.0;

    // Check if the scroll offset has exceeded the height threshold for expansion
    bool isExpanded = scrollController.hasClients &&
        scrollController.offset < (expandedHeight);

    // Only update if there's a change in the expansion state
    if (isExpanded != state.isBarExpanded) {
      add(HomeTabEvent.updateExpandedStatus(isExpanded));
    }
  }

  String currentLanguageCode() {
    return _box.get(DatabaseFieldConstant.selectedLanguage);
  }

  String currentCountry() {
    return _box.get(DatabaseFieldConstant.selectedCountry);
  }

  String currentCity() {
    return _box.get(DatabaseFieldConstant.selectedCity);
  }

  String currentSubCity() {
    return _box.get(DatabaseFieldConstant.selectedSubCity);
  }

  FutureOr<void> _updateExpandedStatus(event, Emitter<HomeTabState> emit) {
    emit(state.copyWith(isBarExpanded: event.status));
  }

  @override
  Future<void> close() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    return super.close();
  }
}
