part of 'web_view_bloc.dart';

/// State for the WebView BLoC.
///
/// This immutable state class holds all the data needed for the web view
/// functionality including the URL to load, page title for the app bar,
/// and internet connectivity status for handling offline scenarios.
@freezed
abstract class WebViewState with _$WebViewState {
  /// Creates a [WebViewState] with the specified parameters.
  ///
  /// All parameters have default values:
  /// - [webViewUrl]: The URL to load in the web view (defaults to empty string)
  /// - [pageTitle]: The title to display in the app bar (defaults to empty string)
  /// - [internetConnectionStauts]: Whether internet connection is available (defaults to false)
  const factory WebViewState({
    /// The URL to be loaded in the web view.
    ///
    /// This string contains the web address that will be displayed
    /// in the WebViewX component. Defaults to an empty string.
    @Default("") String webViewUrl,

    /// The title of the web page to display in the app bar.
    ///
    /// This string is shown in the custom app bar at the top of the screen.
    /// Defaults to an empty string.
    @Default("") String pageTitle,

    /// The current internet connectivity status.
    ///
    /// When true, the web view is displayed. When false, a no internet
    /// view with retry functionality is shown instead. Defaults to false.
    @Default(false) bool internetConnectionStauts,
  }) = _WebViewState;
}
