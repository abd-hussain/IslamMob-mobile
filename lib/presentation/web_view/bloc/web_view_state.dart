part of 'web_view_bloc.dart';

@freezed
class WebViewState with _$WebViewState {
  const factory WebViewState({
    @Default("") String webViewUrl,
    @Default("") String pageTitle,
    @Default(false) bool internetConnectionStauts,
  }) = _WebViewState;
}
