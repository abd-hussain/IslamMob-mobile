import 'package:flutter/material.dart';
import 'package:islam_app/screens/quran_pages_index/widgets/sub_widgets/arrow_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

enum SowrahType {
  makyeh,
  madanyeh,
}

class SowrahTileView extends StatelessWidget {
  final Function() onTap;
  final int index;
  final String sowrahName;
  final bool isCurrentPage;
  final SowrahType sowrahType;

  const SowrahTileView(
      {super.key,
      required this.onTap,
      required this.index,
      required this.sowrahName,
      required this.isCurrentPage,
      required this.sowrahType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 2),
      child: Container(
        height: 60,
        color: const Color(0xff292929),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () => onTap(),
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  child: Center(
                    child: CustomText(
                      title: (index + 1).toString(),
                      fontSize: 20,
                      textColor: isCurrentPage
                          ? const Color(0xff007F37)
                          : Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CustomText(
                    title: sowrahName,
                    fontSize: 20,
                    textColor:
                        isCurrentPage ? const Color(0xff007F37) : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                _getSorahTypeIcon(sowrahType),
                const SizedBox(width: 10),
                const ArrowView()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getSorahTypeIcon(SowrahType type) {
    switch (type) {
      case SowrahType.makyeh:
        return SizedBox(
          width: 35,
          child: Image.asset("assets/images/sorah_type/macca.png"),
        );
      case SowrahType.madanyeh:
        return SizedBox(
          width: 35,
          child: Image.asset("assets/images/sorah_type/madenah.png"),
        );
    }
  }
}
