import 'package:flutter/material.dart';
import 'package:islam_app/screens/quran_pages_index/widgets/sub_widgets/arrow_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class PagesTileView extends StatelessWidget {
  final int index;
  final String sowrahName;
  final bool isCurrentPage;
  final bool isBookedMarked;

  final Function() onTap;

  const PagesTileView(
      {super.key,
      required this.index,
      required this.sowrahName,
      required this.isCurrentPage,
      required this.onTap,
      required this.isBookedMarked});

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
                      textColor:
                          isCurrentPage ? Colors.redAccent : Colors.white,
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
                    textColor: isCurrentPage ? Colors.redAccent : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                isBookedMarked
                    ? const SizedBox(
                        width: 30,
                        child: Icon(
                          Icons.bookmark,
                          color: Colors.red,
                        ),
                      )
                    : const SizedBox(width: 30),
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
