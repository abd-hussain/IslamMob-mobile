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
            height: 150,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of items per row
                childAspectRatio: 1.0, // Aspect ratio of the items
                mainAxisExtent: 50, // Height of each item
              ),
              itemCount: 5,
              itemBuilder: (context, index) {
                return SorahTileView(
                  sorahName: '',
                  sorahType: SorahType.maccah,
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
