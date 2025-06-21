import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/hajj_omrah/bloc/hajj_omrah_bloc.dart';
import 'package:islam_app/presentation/hajj_omrah/widgets/webview_loading_view.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

/// Widget for displaying live YouTube video content from Mecca.
///
/// This widget provides Muslims with live video access to the Holy Kaaba
/// and Masjid al-Haram in Mecca, offering spiritual connection during
/// Hajj and Omrah guidance. It features:
/// - **Live video streaming** from the sacred mosque in Mecca
/// - **Loading state management** with visual feedback during video loading
/// - **Responsive design** adapting to different screen sizes
/// - **Spiritual connection** allowing Muslims worldwide to view the Kaaba
///
/// The live view enhances the pilgrimage guidance experience by providing
/// real-time visual connection to the holy sites, helping Muslims feel
/// spiritually connected while learning about Hajj and Omrah rituals
/// and preparing for their sacred journey.
class YoutubeLiveView extends StatelessWidget {
  /// Creates a [YoutubeLiveView] widget.
  ///
  /// This widget displays live YouTube video content from Mecca with
  /// loading state management and responsive design.
  const YoutubeLiveView({super.key});

  /// Builds the YouTube live view with video player and loading states.
  ///
  /// This method constructs a live video interface featuring:
  /// - Embedded YouTube video player with live Mecca content
  /// - Loading overlay during video initialization
  /// - BLoC integration for state management
  /// - Responsive container with proper styling
  ///
  /// The video provides spiritual connection to the holy sites while
  /// users learn about pilgrimage guidance and preparation.
  @override
  Widget build(BuildContext context) {
    final youtubeUrl = "https://www.youtube.com/embed/2Gub8-cSH9c";

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff292929),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 250,
        width: double.infinity,
        child: BlocBuilder<HajjOmrahBloc, HajjOmrahState>(
          buildWhen: (previous, current) =>
              previous.processState != current.processState,
          builder: (context, state) {
            return Stack(
              alignment: Alignment.center,
              fit: StackFit.expand,
              children: [
                WebViewX(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  onWebViewCreated: (controller) async {
                    await controller.loadContent(youtubeUrl);
                  },
                  onPageFinished: (url) => context.read<HajjOmrahBloc>().add(
                      const HajjOmrahEvent.loadingState(
                          const VideoProcessState.success())),
                ),
                if (state.processState == const VideoProcessState.loading())
                  const Positioned.fill(top: 100, child: WebviewLoadingView()),
              ],
            );
          },
        ),
      ),
    );
  }
}
