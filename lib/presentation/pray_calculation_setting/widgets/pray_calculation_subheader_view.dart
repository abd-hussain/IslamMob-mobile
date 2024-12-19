import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PrayCalculationSubHeaderView extends StatelessWidget {
  const PrayCalculationSubHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          _buildRow(context, [
            _TimeCard(
              title: AppLocalizations.of(context)!.midnight,
              timeSelector: (state) => state.midleNighTime,
            ),
            _TimeCard(
              title: AppLocalizations.of(context)!.last3ofnight,
              timeSelector: (state) => state.last3thTime,
            ),
          ]),
          const SizedBox(height: 4),
          _buildRow(context, [
            _TimeCard(
              title: AppLocalizations.of(context)!.deviceTime,
              timeSelector: (state) => state.deviceTime,
            ),
            _TimeCard(
              title: AppLocalizations.of(context)!.applicationTime,
              timeSelector: (state) => state.applicationTime,
            ),
          ]),
        ],
      ),
    );
  }

  Widget _buildRow(BuildContext context, List<Widget> children) {
    return Row(
      children:
          children.map((child) => Expanded(child: child)).expand((child) => [child, const SizedBox(width: 4)]).toList()
            ..removeLast(),
    );
  }
}

class _TimeCard extends StatelessWidget {
  final String title;
  final DateTime? Function(PrayCalculationSettingState state) timeSelector;

  const _TimeCard({
    required this.title,
    required this.timeSelector,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomText(
              title: title,
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: const Color(0xff444444),
              textAlign: TextAlign.center,
            ),
            BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
              buildWhen: (previous, current) => timeSelector(previous) != timeSelector(current),
              builder: (context, state) {
                final time = timeSelector(state) ?? DateTime.now();
                return CustomText(
                  title: DateFormat('hh:mm a').format(time),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: const Color(0xff444444),
                  textAlign: TextAlign.center,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
