import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/models/app_model/calender.dart';
import 'package:islam_app/screens/calender/bloc/calender_bloc.dart';
import 'package:islam_app/screens/calender/widgets/calender_cell_view.dart';
import 'package:islam_app/screens/calender/widgets/calender_header_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  static const Color backgroundColor = Color(0xffF5F6F7);
  static const Color separatorColor = Color(0xFFDADADA);

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics.instance.logEvent(name: "CalenderScreen");

    return BlocProvider(
      create: (_) => CalenderBloc(),
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: CustomAppBar(
          title: AppLocalizations.of(context)!.calenderSettings,
        ),
        body: SafeArea(
          child: BlocBuilder<CalenderBloc, CalenderState>(
            buildWhen: (previous, current) => previous.status != current.status,
            builder: (context, state) {
              if (state.status is CalenderProcessStateLoading) {
                return const Center(
                  child: CircularProgressIndicator(color: Color(0xff007F37)),
                );
              } else if (state.status is CalenderProcessStateError) {
                return const Center(
                    child: CustomText(title: "Something Wrong", fontSize: 14));
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CalenderHeaderView(),
                    BlocBuilder<CalenderBloc, CalenderState>(
                      buildWhen: (previous, current) =>
                          previous.list != current.list,
                      builder: (context, state) {
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 8, // Number of columns
                                mainAxisSpacing: 0,
                                crossAxisSpacing: 0,
                                childAspectRatio: 1.5, // Adjust based on design
                              ),
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context, index) {
                                final rowIndex = index ~/ 8; // Row index
                                final colIndex = index % 8; // Column index
                                final calender = state.list[rowIndex];
                                return _buildCell(calender, colIndex);
                              },
                              itemCount:
                                  state.list.length * 8, // Each row has 8 cells
                            ),
                          ),
                        );
                      },
                    )
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }

  /// Builds a single cell based on the column index.
  Widget _buildCell(CalenderModel calender, int colIndex) {
    switch (colIndex) {
      case 0:
        return CalenderCellView(
            title: calender.dayName, color: backgroundColor);
      case 1:
        return CalenderCellView(
            title: calender.dateHijri, color: Colors.grey[400]!);
      case 2:
        return CalenderCellView(
            title: calender.fajirTime, color: backgroundColor);
      case 3:
        return CalenderCellView(
            title: calender.sunriseTime, color: Colors.grey[400]!);
      case 4:
        return CalenderCellView(
            title: calender.zhurTime, color: backgroundColor);
      case 5:
        return CalenderCellView(
            title: calender.asrTime, color: Colors.grey[400]!);
      case 6:
        return CalenderCellView(
            title: calender.magribTime, color: backgroundColor);
      case 7:
        return CalenderCellView(
            title: calender.ishaTime, color: Colors.grey[400]!);
      default:
        return const SizedBox.shrink();
    }
  }
}
