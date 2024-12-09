import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/domain/repository/network_info.dart';
import 'package:islam_app/core/constants/app_constant.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

part 'web_view_event.dart';
part 'web_view_state.dart';
part 'web_view_bloc.freezed.dart';

class WebViewBloc extends Bloc<WebViewEvent, WebViewState> {
  final Map<String, dynamic>? arguments;

  WebViewBloc({required this.arguments}) : super(const WebViewState()) {
    on<_UpdateWebViewContent>(_updateWebViewContent);
    on<_UpdateInternetConnectionStatus>(_updateInternetConnectionStatus);
    initial();
  }

  initial() {
    _checkInternetConnectionStatus().then((value) {
      _extractArguments();
    });
  }

  WebViewXController? webviewController;

  void _extractArguments() {
    if (arguments != null) {
      add(WebViewEvent.updateWebViewContent(
          webViewUrl: arguments?[AppConstant.webViewPageUrl] ?? "",
          pageTitle: arguments?[AppConstant.pageTitle] ?? ""));

      FirebaseAnalytics.instance.logEvent(
        name: "WebViewScreen",
        parameters: {
          "webViewUrl": arguments?[AppConstant.webViewPageUrl] ?? "",
          "pageTitle": arguments?[AppConstant.pageTitle] ?? "",
        },
      );
    }
  }

  Future<bool> _checkInternetConnectionStatus() async {
    if (!await locator<NetworkInfoRepository>().checkConnectivityOnLaunch()) {
      add(WebViewEvent.updateInternetConnectionStatus(false));
      return false;
    } else {
      add(WebViewEvent.updateInternetConnectionStatus(true));
      return true;
    }
  }

  FutureOr<void> _updateWebViewContent(
      _UpdateWebViewContent event, Emitter<WebViewState> emit) {
    emit(state.copyWith(
        pageTitle: event.pageTitle, webViewUrl: event.webViewUrl));
  }

  FutureOr<void> _updateInternetConnectionStatus(
      _UpdateInternetConnectionStatus event, Emitter<WebViewState> emit) {
    emit(state.copyWith(internetConnectionStauts: event.status));
  }
}
