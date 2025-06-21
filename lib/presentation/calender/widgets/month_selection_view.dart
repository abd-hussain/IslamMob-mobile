import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/calender/bloc/calender_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

/// Widget for selecting and navigating between Islamic calendar months.
///
/// This widget provides month navigation controls for the Islamic calendar
/// interface, allowing users to browse through different Hijri months. It
/// features:
/// - **Current month display** showing the Islamic month name
/// - **Previous month navigation** with left arrow button
/// - **Next month navigation** with right arrow button
/// - **Visual feedback** with proper styling and spacing
///
/// The widget integrates with the calendar BLoC to update the displayed
/// month and corresponding prayer time data, enabling Muslims to explore
/// prayer schedules across different Islamic months and plan their
/// religious observances accordingly.
class MonthSelectionView extends StatelessWidget {
  /// Creates a [MonthSelectionView] widget.
  ///
  /// This widget displays Islamic month navigation controls with
  /// previous/next buttons and current month name display.
  const MonthSelectionView({super.key});

  /// Builds the month selection interface with navigation controls.
  ///
  /// This method constructs the month navigation interface featuring:
  /// - Left arrow for previous month navigation
  /// - Center display of current Islamic month name
  /// - Right arrow for next month navigation
  /// - BLoC integration for state management and month updates
  ///
  /// The interface responds to user interactions by updating the calendar
  /// display with the selected month's prayer time data.
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[400],
      ),
      child: BlocBuilder<CalenderBloc, CalenderState>(
        buildWhen: (previous, current) =>
            previous.monthName != current.monthName,
        builder: (context, state) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: InkWell(
                  onTap: () {
                    context
                        .read<CalenderBloc>()
                        .add(CalenderEvent.previousMonth(state.monthName));
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                    color: Color(0xff444444),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  width: 150,
                  child: CustomText(
                    title: state.monthName,
                    fontSize: 14,
                    color: const Color(0xff444444),
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context
                          .read<CalenderBloc>()
                          .add(CalenderEvent.nextMonth(state.monthName));
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Color(0xff444444),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
