import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/qibla_finder/bloc/qibla_finder_bloc.dart';
import 'package:islam_app/presentation/qibla_finder/widgets/compass/qiblah_compass.dart';
import 'package:islam_app/presentation/qibla_finder/widgets/map/qiblah_maps.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:qibla_finder/qibla_finder.dart';

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
          title: IslamMobLocalizations.of(context).qiblaFinder,
        ),
        body: SafeArea(
          child: FutureBuilder(
            future: QiblahFinder.androidDeviceSensorSupport(),
            builder: (_, AsyncSnapshot<bool?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(color: Color(0xff008480)),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: CustomText(
                      title: "Error: ${snapshot.error}", fontSize: 16),
                );
              }

              if (snapshot.data!) {
                return const QiblahCompass();
              } else {
                return const QiblahMaps();
              }
            },
          ),
        ),
      ),
    );
  }
}
