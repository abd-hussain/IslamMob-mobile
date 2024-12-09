part of 'web_view_bloc.dart';

@freezed
class WebViewEvent with _$WebViewEvent {
  const factory WebViewEvent.updateWebViewContent({
    required String webViewUrl,
    required String pageTitle,
  }) = _UpdateWebViewContent;

  factory WebViewEvent.updateInternetConnectionStatus(bool status) =
      _UpdateInternetConnectionStatus;
}
