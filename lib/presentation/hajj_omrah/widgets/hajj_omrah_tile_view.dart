import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/hajj_omrah_data.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class HajjOmrahTileView extends StatelessWidget {
  final HajjOmrahData data;
  final int colIndex;
  const HajjOmrahTileView(
      {super.key, required this.data, required this.colIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Image.asset(
              data.imagePath,
              fit: BoxFit.cover,
            ),
            CustomText(
              title: data.title.ar,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
