import 'package:flutter/material.dart';
import 'package:islam_app/screens/quran_pages_index/widgets/sub_widgets/arrow_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class PartTileView extends StatelessWidget {
  final Function() onTap;
  final int index;
  final bool isCurrentPart;
  final String partName;

  const PartTileView(
      {super.key,
      required this.onTap,
      required this.index,
      required this.isCurrentPart,
      required this.partName});

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
                      color: isCurrentPart
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
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomText(
                    title: partName,
                    fontSize: 20,
                    color:
                        isCurrentPart ? const Color(0xff007F37) : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                const ArrowView()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
