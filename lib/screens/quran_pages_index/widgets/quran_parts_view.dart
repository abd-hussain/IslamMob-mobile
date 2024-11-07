import 'package:flutter/material.dart';

class QuranPartsView extends StatelessWidget {
  const QuranPartsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return Center(
            child: Text("B"),
          );
        });
  }
}
