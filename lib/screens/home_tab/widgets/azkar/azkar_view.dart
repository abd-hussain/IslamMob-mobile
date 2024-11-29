import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/azkar/bloc/azkar_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/azkar/widgets/finish_view.dart';
import 'package:islam_app/screens/home_tab/widgets/azkar/widgets/zeker_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AzkarView extends StatelessWidget {
  const AzkarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AzkarBloc(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _headerView(context),
            const SizedBox(height: 10),
            _buildFinishView(context),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counters.counter1 != current.counters.counter1,
              builder: (context, state) {
                const maxCount = 3;
                if (maxCount == state.counters.counter1) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counters.counter1,
                  maxCount: maxCount,
                  text: context.read<AzkarBloc>().azkarList[0],
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(const AzkarEvent.incrementCounter(1)),
                );
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counters.counter2 != current.counters.counter2,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counters.counter2) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counters.counter2,
                  maxCount: maxCount,
                  text: context.read<AzkarBloc>().azkarList[1],
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(const AzkarEvent.incrementCounter(2)),
                );
              },
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: BlocBuilder<AzkarBloc, AzkarState>(
                    buildWhen: (previous, current) =>
                        previous.counters.counter3 != current.counters.counter3,
                    builder: (context, state) {
                      const maxCount = 33;
                      if (maxCount == state.counters.counter3) {
                        return const SizedBox.shrink();
                      }
                      return ZekerView(
                        currentCount: state.counters.counter3,
                        maxCount: maxCount,
                        text: context.read<AzkarBloc>().azkarList[2],
                        onTap: () => context
                            .read<AzkarBloc>()
                            .add(const AzkarEvent.incrementCounter(3)),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: BlocBuilder<AzkarBloc, AzkarState>(
                    buildWhen: (previous, current) =>
                        previous.counters.counter4 != current.counters.counter4,
                    builder: (context, state) {
                      const maxCount = 33;
                      if (maxCount == state.counters.counter4) {
                        return const SizedBox.shrink();
                      }
                      return ZekerView(
                        currentCount: state.counters.counter4,
                        maxCount: maxCount,
                        text: context.read<AzkarBloc>().azkarList[3],
                        onTap: () => context
                            .read<AzkarBloc>()
                            .add(const AzkarEvent.incrementCounter(4)),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: BlocBuilder<AzkarBloc, AzkarState>(
                    buildWhen: (previous, current) =>
                        previous.counters.counter5 != current.counters.counter5,
                    builder: (context, state) {
                      const maxCount = 33;
                      if (maxCount == state.counters.counter5) {
                        return const SizedBox.shrink();
                      }
                      return ZekerView(
                        currentCount: state.counters.counter5,
                        maxCount: maxCount,
                        text: context.read<AzkarBloc>().azkarList[4],
                        onTap: () => context
                            .read<AzkarBloc>()
                            .add(const AzkarEvent.incrementCounter(5)),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counters.counter6 != current.counters.counter6,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counters.counter6) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counters.counter6,
                  maxCount: maxCount,
                  text: context.read<AzkarBloc>().azkarList[5],
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(const AzkarEvent.incrementCounter(6)),
                );
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counters.counter7 != current.counters.counter7,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counters.counter7) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counters.counter7,
                  maxCount: maxCount,
                  text: context.read<AzkarBloc>().azkarList[6],
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(const AzkarEvent.incrementCounter(7)),
                );
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counters.counter8 != current.counters.counter8,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counters.counter8) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counters.counter8,
                  maxCount: maxCount,
                  text: context.read<AzkarBloc>().azkarList[7],
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(const AzkarEvent.incrementCounter(8)),
                );
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counters.counter9 != current.counters.counter9,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counters.counter9) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counters.counter9,
                  maxCount: maxCount,
                  title: context.read<AzkarBloc>().besemellah,
                  text: context.read<AzkarBloc>().azkarList[8],
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(const AzkarEvent.incrementCounter(9)),
                );
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counters.counter10 != current.counters.counter10,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counters.counter10) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counters.counter10,
                  maxCount: maxCount,
                  title: context.read<AzkarBloc>().besemellah,
                  text: context.read<AzkarBloc>().azkarList[9],
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(const AzkarEvent.incrementCounter(10)),
                );
              },
            ),
            const SizedBox(height: 10),
            BlocBuilder<AzkarBloc, AzkarState>(
              buildWhen: (previous, current) =>
                  previous.counters.counter11 != current.counters.counter11,
              builder: (context, state) {
                const maxCount = 1;
                if (maxCount == state.counters.counter11) {
                  return const SizedBox.shrink();
                }
                return ZekerView(
                  currentCount: state.counters.counter11,
                  maxCount: maxCount,
                  title: context.read<AzkarBloc>().besemellah,
                  text: context.read<AzkarBloc>().azkarList[10],
                  onTap: () => context
                      .read<AzkarBloc>()
                      .add(const AzkarEvent.incrementCounter(11)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _headerView(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/images/azkar.png",
          scale: 10,
        ),
        const SizedBox(width: 4),
        CustomText(
          title: AppLocalizations.of(context)!.azkarTitle,
          fontSize: 18,
          color: const Color(0xff444444),
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }

  Widget _buildFinishView(BuildContext context) {
    return BlocBuilder<AzkarBloc, AzkarState>(
      builder: (context, state) => context.read<AzkarBloc>().isCounterFilled()
          ? const AzkarFinishView()
          : const SizedBox.shrink(),
    );
  }
}
