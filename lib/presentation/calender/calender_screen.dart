import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/model/calender.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/calender/bloc/calender_bloc.dart';
import 'package:islam_app/presentation/calender/widgets/calender_cell_view.dart';
import 'package:islam_app/presentation/calender/widgets/calender_header_view.dart';
import 'package:islam_app/presentation/calender/widgets/month_selection_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  static const Color backgroundColor = Color(0xfffff2e9);
  static const Color separatorColor = Color(0xFFDADADA);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CalenderBloc()
        ..add(const CalenderEvent.prepareSalahTiming())
        ..add(const CalenderEvent.fillMonthNameFirstTime()),
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: CustomAppBar(
          title: IslamMobLocalizations.of(context).calenderSettings,
        ),
        body: SafeArea(
          child: BlocBuilder<CalenderBloc, CalenderState>(
            buildWhen: (previous, current) => previous.status != current.status,
            builder: (context, state) {
              if (state.status is CalenderProcessStateLoading) {
                return const Center(
                  child: CircularProgressIndicator(color: Color(0xff008480)),
                );
              } else if (state.status is CalenderProcessStateError) {
                return const Center(
                    child: CustomText(title: "Something Wrong", fontSize: 14));
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Image.asset("assets/images/calender.png"),
                        const Positioned(top: 8, child: MonthSelectionView()),
                      ],
                    ),
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
                                crossAxisCount: 7, // Number of columns
                                mainAxisSpacing: 2,
                                childAspectRatio: 1.8, // Adjust based on design
                              ),
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context, index) {
                                final rowIndex = index ~/ 7; // Row index
                                final colIndex = index % 7; // Column index
                                final calender = state.list[rowIndex];
                                return _buildCell(calender, colIndex);
                              },
                              itemCount:
                                  state.list.length * 7, // Each row has 8 cells
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
            title: calender.dayName,
            color: calender.isToday ? Colors.redAccent : Colors.white);
      case 1:
        return CalenderCellView(
            title: calender.dateMilady,
            title2: calender.dateHijri,
            color: calender.isToday ? Colors.redAccent : Colors.grey[400]!);
      case 2:
        return CalenderCellView(
            title: calender.fajirTime,
            color: calender.isToday ? Colors.redAccent : Colors.white);
      case 3:
        return CalenderCellView(
            title: calender.zhurTime,
            color: calender.isToday ? Colors.redAccent : Colors.grey[400]!);
      case 4:
        return CalenderCellView(
            title: calender.asrTime,
            color: calender.isToday ? Colors.redAccent : Colors.white);
      case 5:
        return CalenderCellView(
            title: calender.magribTime,
            color: calender.isToday ? Colors.redAccent : Colors.grey[400]!);
      case 6:
        return CalenderCellView(
            title: calender.ishaTime,
            color: calender.isToday ? Colors.redAccent : Colors.white);
      default:
        return const SizedBox.shrink();
    }
  }
}
