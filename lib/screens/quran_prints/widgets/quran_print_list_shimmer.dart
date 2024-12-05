import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class QuranListPrintsShimmer extends StatelessWidget {
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
                width: double.infinity, height: 16, horizontalPadding: 8),
            _buildShimmerBox(
                width: double.infinity, height: 16, horizontalPadding: 30),
            const Spacer(),
            _buildShimmerBox(
                width: double.infinity, height: 50, horizontalPadding: 16),
            const SizedBox(height: 10),
            _buildShimmerBox(
                width: double.infinity, height: 50, horizontalPadding: 16),
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
      child: Container(
        width: width,
        height: height,
        color: Colors.white,
      ),
    );
  }
}
