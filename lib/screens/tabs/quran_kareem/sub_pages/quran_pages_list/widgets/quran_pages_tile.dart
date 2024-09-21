import 'package:flutter/material.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/utils/quran_referances.dart';

class QuranPagesTileView extends StatefulWidget {
  const QuranPagesTileView(
      {super.key, required this.onTap, required this.pageNumber});
  final int pageNumber;
  final Function() onTap;

  @override
  State<QuranPagesTileView> createState() => _QuranPagesTileViewState();
}

class _QuranPagesTileViewState extends State<QuranPagesTileView> {
  @override
  Widget build(BuildContext context) {
    int nearestSorahName = QuranReferances.getSurahName(widget.pageNumber);
    String sorahName = QuranReferances.getSorahName(
        context: context, pageNumber: nearestSorahName);

    return Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 2),
      child: Container(
        height: 60,
        color: const Color(0xff292929),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              widget.onTap();
            },
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  child: Center(
                    child: CustomText(
                      title: widget.pageNumber.toString(),
                      fontSize: 20,
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
                    title: sorahName,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // page.isMarked
                //     ? const SizedBox(
                //         width: 30,
                //         child: Icon(
                //           Icons.bookmark,
                //           color: Colors.red,
                //         ),
                //       )
                //     : const SizedBox(width: 30),//TODO

                QuranReferances.getSorahTypeIcon(
                    context: context,
                    pageNumber: widget.pageNumber,
                    sorahName: sorahName),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
