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

/// Screen displaying the Islamic calendar with integrated prayer times.
///
/// This screen provides Muslims with a comprehensive calendar view that
/// combines the Hijri (Islamic lunar) calendar with daily prayer times.
/// It features:
/// - **Hijri calendar navigation** between Islamic months
/// - **Prayer time display** for all five daily prayers
/// - **Date correlation** showing both Islamic and Gregorian dates
/// - **Today highlighting** for current date awareness
/// - **Month selection** with Islamic month names
///
/// The calendar helps Muslims:
/// - Plan their religious observances according to Islamic dates
/// - View prayer schedules in calendar format
/// - Maintain awareness of Islamic months and their significance
/// - Coordinate daily prayers with calendar planning
///
/// This integration of Islamic calendar and prayer times provides a
/// comprehensive tool for Islamic time management and religious planning.
class CalenderScreen extends StatelessWidget {
  /// Creates a [CalenderScreen] widget.
  ///
  /// This screen displays the Islamic calendar interface with integrated
  /// prayer times and month navigation functionality.
  const CalenderScreen({super.key});

  /// Background color for the calendar screen interface.
  static const Color backgroundColor = Color(0xfffff2e9);

  /// Color used for separators and dividers in the calendar grid.
  static const Color separatorColor = Color(0xFFDADADA);

  /// Builds the Islamic calendar screen with prayer time integration.
  ///
  /// This method constructs the calendar interface featuring:
  /// - BLoC provider for calendar state management
  /// - Loading states during data preparation
  /// - Error handling for calendar data issues
  /// - Grid layout displaying dates and prayer times
  /// - Month navigation and selection controls
  ///
  /// The screen automatically loads the current Islamic month and
  /// corresponding prayer times, providing immediate access to
  /// Islamic calendar and prayer schedule information.
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
                  child: CustomText(title: "Something Wrong", fontSize: 14),
                );
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
                                    childAspectRatio:
                                        1.8, // Adjust based on design
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
                    ),
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
          color: calender.isToday ? Colors.redAccent : Colors.white,
        );
      case 1:
        return CalenderCellView(
          title: calender.dateMilady,
          title2: calender.dateHijri,
          color: calender.isToday ? Colors.redAccent : Colors.grey[400]!,
        );
      case 2:
        return CalenderCellView(
          title: calender.fajirTime,
          color: calender.isToday ? Colors.redAccent : Colors.white,
        );
      case 3:
        return CalenderCellView(
          title: calender.zhurTime,
          color: calender.isToday ? Colors.redAccent : Colors.grey[400]!,
        );
      case 4:
        return CalenderCellView(
          title: calender.asrTime,
          color: calender.isToday ? Colors.redAccent : Colors.white,
        );
      case 5:
        return CalenderCellView(
          title: calender.magribTime,
          color: calender.isToday ? Colors.redAccent : Colors.grey[400]!,
        );
      case 6:
        return CalenderCellView(
          title: calender.ishaTime,
          color: calender.isToday ? Colors.redAccent : Colors.white,
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
