import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/web_view/bloc/web_view_bloc.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/no_internet_view.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

/// A screen that displays web content using WebViewX.
///
/// This screen provides a full-screen web view experience with:
/// - Custom app bar showing the page title
/// - Internet connectivity checking with retry functionality
/// - WebViewX integration for cross-platform web content display
/// - BLoC state management for handling web view state and connectivity
///
/// The screen expects route arguments containing web view configuration
/// such as URL and page title.
class WebViewScreen extends StatefulWidget {
  /// Creates a [WebViewScreen].
  ///
  /// This screen requires route arguments to be passed containing
  /// the web view configuration (URL, title, etc.).
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late WebViewBloc _webViewBloc;

  @override
  void didChangeDependencies() {
    // Initialize your bloc with the arguments here
    _webViewBloc = WebViewBloc(
      arguments:
          ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?,
    );

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          _webViewBloc..add(const WebViewEvent.initalizeWebViewContent()),
      child: BlocBuilder<WebViewBloc, WebViewState>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(
              title: state.pageTitle,
            ),
            body: (state.internetConnectionStauts == false)
                ? NoInternetView(
                    retryCallback: () => context.read<WebViewBloc>().add(
                          const WebViewEvent.initalizeWebViewContent(),
                        ),
                  )
                : WebViewAware(
                    child: WebViewX(
                      key: const ValueKey('webviewx'),
                      initialSourceType: SourceType.urlBypass,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      onWebViewCreated: (controller) async {
                        context.read<WebViewBloc>().webviewController =
                            controller;
                        await context
                            .read<WebViewBloc>()
                            .webviewController!
                            .loadContent(
                              state.webViewUrl,
                              sourceType: SourceType.urlBypass,
                            );
                      },
                    ),
                  ),
          );
        },
      ),
    );
  }
}
