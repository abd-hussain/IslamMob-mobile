import 'package:card_swiper/card_swiper.dart';
import 'package:database_manager/database_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/pray_calculation_setting/bloc/pray_calculation_setting_bloc.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/calculation_method_view.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/edit_pray_time_minutes_view.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/madhab_view.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/poles_calculation_view.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/pray_calculation_header_view.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/pray_calculation_subheader_view.dart';
import 'package:islam_app/presentation/pray_calculation_setting/widgets/time_zoon_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';

/// A screen that provides comprehensive prayer calculation settings.
///
/// This screen allows users to configure various aspects of prayer time
/// calculations including calculation methods, madhab selection, timezone
/// settings, manual time adjustments, and high latitude calculations.
/// It uses a swiper interface to navigate between different setting categories
/// and provides save and factory reset functionality.
class PrayCalculationSettingScreen extends StatelessWidget {
  /// Creates a [PrayCalculationSettingScreen] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const PrayCalculationSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAnalyticsRepository.logEvent(name: "PrayCalculationSettingScreen");

    return BlocProvider(
      create: (context) =>
          PrayCalculationSettingBloc()
            ..add(PrayCalculationSettingEvent.setup()),
      child: Scaffold(
        appBar: CustomAppBar(
          title: IslamMobLocalizations.of(context).prayCalculationSettings,
        ),
        body: SafeArea(
          child: Column(
            children: [
              const PrayCalculationHeaderView(),
              const SizedBox(height: 4),
              const PrayCalculationSubHeaderView(),
              const SizedBox(height: 8),
              _swiperSection(),
              const SizedBox(height: 10),
              _buttonsSection(context),
            ],
          ),
        ),
      ),
    );
  }

  // Swiper section for displaying the different calculation views
  Widget _swiperSection() {
    return Expanded(
      child: Container(
        color: Colors.grey[300],
        child: Swiper(
          itemCount: 5,
          pagination: const SwiperPagination(),
          controller: SwiperController(),
          itemBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return const CalculationMethodView();
              case 1:
                return const MadhabView();
              case 2:
                return const TimeZoneView();
              case 3:
                return const EditPrayTimeMinutesView();
              case 4:
                return const PolesCalculationView();
              default:
                return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }

  Widget _buttonsSection(BuildContext context) {
    final localization = IslamMobLocalizations.of(context);

    return BlocBuilder<PrayCalculationSettingBloc, PrayCalculationSettingState>(
      buildWhen: (previous, current) =>
          previous.buttonsStatus != current.buttonsStatus,
      builder: (context, state) {
        return Column(
          children: [
            CustomButton(
              isEnabled: state.buttonsStatus,
              padding: const EdgeInsets.only(left: 16, right: 16),
              title: localization.save,
              onTap: () {
                context.read<PrayCalculationSettingBloc>().add(
                  PrayCalculationSettingEvent.saveChanges(),
                );
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              padding: const EdgeInsets.only(left: 16, right: 16),
              isEnabled: true,
              color: Colors.redAccent,
              title: localization.factoryReset,
              onTap: () async {
                final navigator = Navigator.of(context, rootNavigator: true);
                await DataBaseManagerBase.saveMultipleInDatabase(
                  data: {
                    DatabaseFieldInBoardingStageConstant.finishInBoarding: null,
                    DatabaseFieldInBoardingStageConstant.inBoardingStage: 0,
                  },
                );
                await navigator.pushNamedAndRemoveUntil(
                  RoutesConstants.inBoardingScreen,
                  (Route<dynamic> route) => false,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
