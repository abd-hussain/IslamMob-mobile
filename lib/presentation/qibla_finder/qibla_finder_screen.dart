import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/qibla_finder/bloc/qibla_finder_bloc.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
// import 'package:qibla_finder/qibla_finder.dart';

/// Screen for finding the Qibla direction for Islamic prayers.
///
/// This screen provides Muslims with the ability to determine the correct
/// direction (Qibla) to face during their five daily prayers. The Qibla
/// points toward the Kaaba in Mecca, Saudi Arabia, which is the holiest
/// site in Islam. The screen offers:
/// - **Compass-based direction** using device sensors when available
/// - **Map-based direction** as an alternative for devices without sensors
/// - **Accurate calculations** based on user's current location
/// - **Visual indicators** to clearly show the Qibla direction
///
/// Finding the correct Qibla direction is essential for valid Islamic prayers,
/// as Muslims are required to face Mecca during their daily prayers. This
/// tool helps Muslims worldwide maintain proper prayer orientation regardless
/// of their location, supporting their religious obligations with modern technology.
class QiblaFinderScreen extends StatelessWidget {
  /// Creates a [QiblaFinderScreen] widget.
  ///
  /// This screen provides Qibla direction finding functionality using
  /// device sensors and location services to help Muslims orient their
  /// prayers toward Mecca.
  const QiblaFinderScreen({super.key});

  /// Builds the Qibla finder screen with direction detection capabilities.
  ///
  /// This method constructs the Qibla finder interface with:
  /// - Device sensor support detection for compass functionality
  /// - Fallback to map-based direction when sensors are unavailable
  /// - Loading states during sensor initialization
  /// - Error handling for sensor or location issues
  ///
  /// The screen uses BLoC pattern for state management and provides
  /// accurate Qibla direction based on the user's geographical location.
  ///
  /// Note: The Qibla finder implementation is currently commented out
  /// pending integration with the qibla_finder package.
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
        // body: SafeArea(
        // child: FutureBuilder(
        //   future: QiblahFinder.androidDeviceSensorSupport(),
        //   builder: (_, AsyncSnapshot<bool?> snapshot) {
        //     if (snapshot.connectionState == ConnectionState.waiting) {
        //       return const Center(
        //         child: CircularProgressIndicator(color: Color(0xff008480)),
        //       );
        //     }
        //     if (snapshot.hasError) {
        //       return Center(
        //         child: CustomText(title: "Error: ${snapshot.error}", fontSize: 16),
        //       );
        //     }

        //     if (snapshot.data!) {
        //       return const QiblahCompass();
        //     } else {
        //       return const QiblahMaps();
        //     }
        //   },
        // ),
        // ),
      ),
    );
  }
}
