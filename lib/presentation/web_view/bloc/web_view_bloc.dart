import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/domain/constants/app_constant.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:firebase_manager/firebase_manager.dart';

part 'web_view_event.dart';
part 'web_view_state.dart';
part 'web_view_bloc.freezed.dart';

class WebViewBloc extends Bloc<WebViewEvent, WebViewState> {
  final Map<String, dynamic>? arguments;
  WebViewXController? webviewController;

  WebViewBloc({required this.arguments}) : super(const WebViewState()) {
    on<_InitalizeWebViewContent>(_initalizeWebViewContent);
    on<_UpdateWebViewContent>(_updateWebViewContent);
    on<_UpdateInternetConnectionStatus>(_updateInternetConnectionStatus);
  }

  void _extractArguments() {
    if (arguments != null) {
      add(WebViewEvent.updateWebViewContent(
          webViewUrl: arguments?[AppConstant.webViewPageUrl] ?? "",
          pageTitle: arguments?[AppConstant.pageTitle] ?? ""));

      FirebaseAnalyticsRepository.logEvent(
        name: "WebViewScreen",
        parameters: {
          "webViewUrl": arguments?[AppConstant.webViewPageUrl] ?? "",
          "pageTitle": arguments?[AppConstant.pageTitle] ?? "",
        },
      );
    }
  }

  Future<bool> _checkInternetConnectionStatus() async {
    if (!await NetworkUseCase.checkInternetConeection()) {
      add(WebViewEvent.updateInternetConnectionStatus(false));
      return false;
    } else {
      add(WebViewEvent.updateInternetConnectionStatus(true));
      return true;
    }
  }

  FutureOr<void> _initalizeWebViewContent(_InitalizeWebViewContent event, Emitter<WebViewState> emit) {
    _checkInternetConnectionStatus().then((value) {
      _extractArguments();
    });
  }

  FutureOr<void> _updateWebViewContent(_UpdateWebViewContent event, Emitter<WebViewState> emit) {
    emit(state.copyWith(pageTitle: event.pageTitle, webViewUrl: event.webViewUrl));
  }

  FutureOr<void> _updateInternetConnectionStatus(_UpdateInternetConnectionStatus event, Emitter<WebViewState> emit) {
    emit(state.copyWith(internetConnectionStauts: event.status));
  }
}
