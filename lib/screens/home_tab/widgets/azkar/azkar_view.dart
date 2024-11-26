import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/azkar/bloc/azkar_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key});
  //TODO handle Azkar

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AzkarBloc(),
      child: SizedBox(
        height: 260,
        child: Swiper(
            itemCount: 3,
            pagination: const SwiperPagination(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/azkar.png",
                              scale: 8,
                            ),
                            const SizedBox(width: 4),
                            const CustomText(
                              title: "Azkar",
                              fontSize: 20,
                              textColor: Color(0xff444444),
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const CustomText(
                          title:
                              "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255]. ",
                          fontSize: 20,
                          textColor: Color(0xff444444),
                          maxLins: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }

            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Column(
            //       children: [
            //         Row(
            //           children: [
            //             Image.asset(
            //               "assets/images/azkar.png",
            //               scale: 8,
            //             ),
            //             const SizedBox(width: 4),
            //             const CustomText(
            //               title: "Azkar",
            //               fontSize: 20,
            //               textColor: Color(0xff444444),
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ],
            //         ),
            //         const SizedBox(height: 10),
            //         const CustomText(
            //           title:
            //               "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255]. ",
            //           fontSize: 20,
            //           textColor: Color(0xff444444),
            //           maxLins: 10,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            ),
      ),
    );
  }
}
