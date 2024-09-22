import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/sub_pages/quran_pages_list/bloc/quran_pages_list_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/utils/quran_referances.dart';

class QuranPagesTileView extends StatefulWidget {
  const QuranPagesTileView(
      {super.key,
      required this.onTap,
      required this.pageNumber,
      required this.selectedPageNumber});
  final int pageNumber;
  final int selectedPageNumber;

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
                      textColor: widget.selectedPageNumber == widget.pageNumber
                          ? Colors.redAccent
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
                    title: sorahName,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                BlocBuilder<QuranPagesListBloc, QuranPagesListState>(
                  buildWhen: (previous, current) {
                    return previous.bookmarkedPages != current.bookmarkedPages;
                  },
                  builder: (context, state) {
                    return state.bookmarkedPages.contains(widget.pageNumber)
                        ? const SizedBox(
                            width: 30,
                            child: Icon(
                              Icons.bookmark,
                              color: Colors.red,
                            ),
                          )
                        : const SizedBox(width: 30);
                  },
                ),
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
