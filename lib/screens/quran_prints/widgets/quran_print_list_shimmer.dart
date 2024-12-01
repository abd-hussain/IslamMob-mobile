import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
//TODO: This tree need to be refactored

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
        itemBuilder: (_, __) {
          return Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
            child: Container(
              color: Colors.white30,
              height: 400,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 10),
                  Container(
                    width: 120,
                    height: 16,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 16,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      width: double.infinity,
                      height: 16,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
