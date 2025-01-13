import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/qibla_finder/bloc/qibla_finder_bloc.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class QiblaFinderScreen extends StatelessWidget {
  const QiblaFinderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          QiblaFinderBloc()..add(const QiblaFinderEvent.setup()),
      child: Scaffold(
        backgroundColor: const Color(0xfffff2e9),
        appBar: CustomAppBar(
          title: AppLocalizations.of(context)!.qiblaFinder,
        ),
        body: SafeArea(
          child: BlocBuilder<QiblaFinderBloc, QiblaFinderState>(
              buildWhen: (previous, current) =>
                  previous.status != current.status,
              builder: (context, state) {
                if (state.status is QiblaFinderProcessStateLoading) {
                  return const Center(
                    child: CircularProgressIndicator(color: Color(0xff008480)),
                  );
                } else if (state.status is QiblaFinderProcessStateError) {
                  return const Center(
                      child:
                          CustomText(title: "Something Wrong", fontSize: 14));
                } else {
                  //TODO: implement QiblaFinderScreen
                  return const Center(
                    child: Text("Qibla Finder"),
                  );
                }
              }),
        ),
      ),
    );
  }
}
