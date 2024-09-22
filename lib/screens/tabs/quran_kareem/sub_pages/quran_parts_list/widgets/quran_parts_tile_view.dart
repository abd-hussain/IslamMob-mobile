import 'package:flutter/material.dart';
import 'package:islam_app/screens/tabs/quran_kareem/sub_pages/quran_parts_list/widgets/sorah_tile_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/utils/quran_referances.dart';

class QuranPartsTileView extends StatelessWidget {
  final int pageNumber;
  final Function(int pageNumber) onJuzTap;
  final Function(int pageNumber) onSorahTap;

  const QuranPartsTileView({
    super.key,
    required this.pageNumber,
    required this.onJuzTap,
    required this.onSorahTap,
  });

  @override
  Widget build(BuildContext context) {
    List<String> sowarNames = QuranReferances.getSurahNamesInRange(
        context: context,
        fromPage: QuranReferances.getPageRangeForJuz(juz: pageNumber).first,
        toPage: QuranReferances.getPageRangeForJuz(juz: pageNumber).last);

    return Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 2),
      child: Column(
        children: [
          Container(
            height: 50,
            color: Colors.black.withOpacity(0.8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  onJuzTap(QuranReferances.getPageRangeForJuz(juz: pageNumber)
                      .first);
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 80,
                      child: Center(
                        child: CustomText(
                          title:
                              "${QuranReferances.getPageRangeForJuz(juz: pageNumber).first} - ${QuranReferances.getPageRangeForJuz(juz: pageNumber).last}",
                          fontSize: 16,
                          textColor: Colors.white,
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
                        title: QuranReferances.juzNameDependOnNumber(
                            context: context, index: pageNumber),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: sowarNames.length * 43,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: sowarNames.length,
              itemBuilder: (context, index) {
                return SorahTileView(
                  sorahName: sowarNames[index],
                  pageNumber: 100,
                  onSorahTap: () {
                    //TODO
                    onSorahTap(1);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
