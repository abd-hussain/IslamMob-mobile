import 'package:flutter/material.dart';
import 'package:islam_app/screens/tabs/quran_kareem/widgets/tool_tips/bottom_tile.dart';

class QuranBottomHelpBar extends StatelessWidget {
  const QuranBottomHelpBar({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO
    return Container(
      color: Colors.black.withOpacity(0.7),
      height: 140,
      child: GridView(
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            childAspectRatio: 3,
          ),
          children: [
            BottomTile(
              title: "Lighting",
              icon: Icons.sunny,
            ),
            BottomTile(
              title: "Add Bookmark",
              icon: Icons.bookmark_add,
            ),
            BottomTile(
              title: "Bookmark List",
              icon: Icons.collections_bookmark_sharp,
            ),
            BottomTile(
              title: "Indexing",
              icon: Icons.list,
            ),
            BottomTile(
              title: "Parts",
              icon: Icons.pie_chart_rounded,
            ),
            BottomTile(
              title: "Pages",
              icon: Icons.copy_sharp,
            ),
            BottomTile(
              title: "Settings",
              icon: Icons.settings,
            ),
            Container(
              color: Colors.black.withOpacity(0.9),
            ),
            BottomTile(
              title: "Language",
              icon: Icons.language,
            ),
          ]),
    );
  }
}
