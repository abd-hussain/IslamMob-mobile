import 'dart:async';

import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checkup/internet_connection_checkup.dart';
import 'package:islam_app/domain/constants/app_constant.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

part 'web_view_bloc.freezed.dart';
part 'web_view_event.dart';
part 'web_view_state.dart';

/// A BLoC that manages the state and logic for web view functionality.
///
/// This BLoC handles:
/// - Web view initialization and content loading
/// - Internet connection status monitoring
/// - URL and page title management
/// - Firebase analytics logging for web view usage
/// - Argument extraction from navigation parameters
///
/// The BLoC automatically checks internet connectivity before loading
/// web content and logs analytics events for tracking web view usage.
class WebViewBloc extends Bloc<WebViewEvent, WebViewState> {
  /// Arguments passed from the navigation route containing web view configuration.
  ///
  /// Expected to contain:
  /// - [AppConstant.webViewPageUrl]: The URL to load in the web view
  /// - [AppConstant.pageTitle]: The title to display for the page
  final Map<String, dynamic>? arguments;

  /// Controller for managing the WebViewX widget.
  ///
  /// This controller provides programmatic access to web view operations
  /// such as navigation, JavaScript execution, and content manipulation.
  /// It's initialized when the web view widget is created.
  WebViewXController<dynamic>? webviewController;

  /// Creates a new [WebViewBloc] instance.
  ///
  /// Requires [arguments] containing the web view configuration parameters.
  /// Automatically sets up event handlers for web view initialization,
  /// content updates, and internet connection status changes.
  WebViewBloc({required this.arguments}) : super(const WebViewState()) {
    on<_InitalizeWebViewContent>(_initalizeWebViewContent);
    on<_UpdateWebViewContent>(_updateWebViewContent);
    on<_UpdateInternetConnectionStatus>(_updateInternetConnectionStatus);
  }

  void _extractArguments() {
    if (arguments != null) {
      add(
        WebViewEvent.updateWebViewContent(
          webViewUrl: (arguments?[AppConstant.webViewPageUrl] as String?) ?? "",
          pageTitle: (arguments?[AppConstant.pageTitle] as String?) ?? "",
        ),
      );

      FirebaseAnalyticsRepository.logEvent(
        name: "WebViewScreen",
        parameters: {
          "webViewUrl":
              (arguments?[AppConstant.webViewPageUrl] as String?) ?? "",
          "pageTitle": (arguments?[AppConstant.pageTitle] as String?) ?? "",
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

  FutureOr<void> _initalizeWebViewContent(
    _InitalizeWebViewContent event,
    Emitter<WebViewState> emit,
  ) {
    _checkInternetConnectionStatus().then((value) {
      _extractArguments();
    });
  }

  FutureOr<void> _updateWebViewContent(
    _UpdateWebViewContent event,
    Emitter<WebViewState> emit,
  ) {
    emit(
      state.copyWith(pageTitle: event.pageTitle, webViewUrl: event.webViewUrl),
    );
  }

  FutureOr<void> _updateInternetConnectionStatus(
    _UpdateInternetConnectionStatus event,
    Emitter<WebViewState> emit,
  ) {
    emit(state.copyWith(internetConnectionStauts: event.status));
  }
}
