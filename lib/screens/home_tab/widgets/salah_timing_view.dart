import 'package:flutter/material.dart';
import 'package:islam_app/screens/home_tab/bloc/home_tab_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/sub_widgets/day_box.dart';
import 'package:islam_app/screens/home_tab/widgets/sub_widgets/salah_box.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class SalahTimingView extends StatefulWidget {
  final String currentLanguageCode;
  const SalahTimingView({super.key, required this.currentLanguageCode});

  @override
  State<SalahTimingView> createState() => _SalahTimingViewState();
}

class _SalahTimingViewState extends State<SalahTimingView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff292929),
      width: double.infinity,
      child: Column(
        children: [
          DayBox(currentLanguageCode: widget.currentLanguageCode),
          const Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SalahBox(
                  salahType: SalahType.fajr,
                  salahTime: "05:00", //TODO
                  isCurrentSalah: false,
                ),
                SalahBox(
                  salahType: SalahType.sunrise,
                  salahTime: "06:00", //TODO
                  isCurrentSalah: false,
                ),
                SalahBox(
                  salahType: SalahType.zhur,
                  salahTime: "07:00", //TODO
                  isCurrentSalah: true,
                ),
                SalahBox(
                  salahType: SalahType.asr,
                  salahTime: "08:00", //TODO
                  isCurrentSalah: false,
                ),
                SalahBox(
                  salahType: SalahType.maghrib,
                  salahTime: "09:00", //TODO
                  isCurrentSalah: false,
                ),
                SalahBox(
                  salahType: SalahType.isha,
                  salahTime: "10:00", //TODO
                  isCurrentSalah: false,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomText(
                          title: "Midnight",
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          textColor: Color(0xff444444),
                          textAlign: TextAlign.center,
                        ),
                        CustomText(
                          title: "11:59",
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          textColor: Color(0xff444444),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    Icons.alarm,
                    color: Color(0xff444444),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomText(
                          title: "last 1/3 of night",
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          textColor: Color(0xff444444),
                          textAlign: TextAlign.center,
                        ),
                        CustomText(
                          title: "1:38",
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          textColor: Color(0xff444444),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
