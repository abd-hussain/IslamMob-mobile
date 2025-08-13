import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PostShimmer extends StatelessWidget {
  final int itemCount;

  const PostShimmer({super.key, this.itemCount = 6});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // Avatar
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // Text blocks
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 14,
                          width: MediaQuery.of(context).size.width * 0.6,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 8),
                        Container(height: 14, width: 100, color: Colors.white),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
