import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

/// A shimmer loading widget for the Quran prints list.
///
/// This widget displays a shimmer effect while the list of available
/// Quran print editions is being loaded from the server. It shows
/// placeholder items that mimic the structure of actual print tiles
/// including title, description, and action button areas.
class QuranListPrintsShimmer extends StatelessWidget {
  /// Creates a [QuranListPrintsShimmer] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const QuranListPrintsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (_, __) => _buildShimmerItem(),
      ),
    );
  }

  Widget _buildShimmerItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        color: Colors.white30,
        height: 400,
        child: Column(
          children: [
            const SizedBox(height: 10),
            _buildShimmerBox(width: 120, height: 16),
            const SizedBox(height: 8),
            _buildShimmerBox(
              width: double.infinity,
              height: 16,
              horizontalPadding: 8,
            ),
            _buildShimmerBox(
              width: double.infinity,
              height: 16,
              horizontalPadding: 30,
            ),
            const Spacer(),
            _buildShimmerBox(
              width: double.infinity,
              height: 50,
              horizontalPadding: 16,
            ),
            const SizedBox(height: 10),
            _buildShimmerBox(
              width: double.infinity,
              height: 50,
              horizontalPadding: 16,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildShimmerBox({
    required double width,
    required double height,
    double horizontalPadding = 0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Container(width: width, height: height, color: Colors.white),
    );
  }
}
