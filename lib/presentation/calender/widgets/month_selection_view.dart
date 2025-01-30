import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/calender/bloc/calender_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class MonthSelectionView extends StatelessWidget {
  const MonthSelectionView({super.key});

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
