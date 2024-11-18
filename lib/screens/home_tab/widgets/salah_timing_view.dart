import 'package:flutter/material.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/screens/home_tab/widgets/home_header_view/bloc/home_header_bloc.dart';
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
                  salahType: SalahTimeStateFajir(),
                  salahTime: "05:00", //TODO
                  isCurrentSalah: false,
                ),
                SalahBox(
                  salahType: SalahTimeStateSunrise(),
                  salahTime: "06:00", //TODO
                  isCurrentSalah: false,
                ),
                SalahBox(
                  salahType: SalahTimeStateZhur(),
                  salahTime: "07:00", //TODO
                  isCurrentSalah: true,
                ),
                SalahBox(
                  salahType: SalahTimeStateAsr(),
                  salahTime: "08:00", //TODO
                  isCurrentSalah: false,
                ),
                SalahBox(
                  salahType: SalahTimeStateMaghrib(),
                  salahTime: "09:00", //TODO
                  isCurrentSalah: false,
                ),
                SalahBox(
                  salahType: SalahTimeStateIsha(),
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
                          title: "11:59", //TODO
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Material(
                      child: InkWell(
                        onTap: () async {
                          final navigator =
                              Navigator.of(context, rootNavigator: true);
                          await navigator.pushNamed(
                              RoutesConstants.prayNotificationSettingScreen);
                        },
                        child: const Icon(
                          Icons.settings,
                          size: 28,
                          color: Color(0xff444444),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
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
                          title: "1:38", //TODO
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
          ),
        ],
      ),
    );
  }
}
