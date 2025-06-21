part of 'web_view_bloc.dart';

/// Events for the WebView BLoC.
///
/// This class defines all possible events that can be dispatched to the
/// [WebViewBloc] to manage the state of the web view screen. The events
/// handle web view initialization, content updates, and network connectivity.
@freezed
class WebViewEvent with _$WebViewEvent {
  /// Initializes the web view content.
  ///
  /// This event is typically dispatched when the web view screen is first
  /// loaded to set up the initial state and prepare the web view for content.
  const factory WebViewEvent.initalizeWebViewContent() =
      _InitalizeWebViewContent;

  /// Updates the web view with new content.
  ///
  /// [webViewUrl] - The URL to load in the web view.
  /// [pageTitle] - The title to display for the current page.
  /// This event is used to navigate to a new URL and update the page title.
  const factory WebViewEvent.updateWebViewContent({
    required String webViewUrl,
    required String pageTitle,
  }) = _UpdateWebViewContent;

  /// Updates the internet connection status.
  ///
  /// [status] - True if internet connection is available, false otherwise.
  /// This is used to handle offline scenarios and show appropriate UI states.
  factory WebViewEvent.updateInternetConnectionStatus(bool status) =
      _UpdateInternetConnectionStatus;
}
