import 'package:islam_app/domain/repository/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/pray_notification_setting/bloc/pray_notification_setting_bloc.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/other_notification_view.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/pray_notification_view.dart';
import 'package:islam_app/presentation/pray_notification_setting/widgets/quick_notification_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class PrayNotificationSettingScreen extends StatelessWidget {
  const PrayNotificationSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAnalyticsRepository.logEvent(name: "PrayNotificationSettingScreen");

    return BlocProvider(
      create: (context) => PrayNotificationSettingBloc()
        ..add(const PrayNotificationSettingEvent
            .initialPrayNotificationSettings()),
      child: Scaffold(
        appBar: CustomAppBar(
            title: AppLocalizations.of(context)!.notificationSettings),
        body: SafeArea(
          child: BlocBuilder<PrayNotificationSettingBloc,
                  PrayNotificationSettingState>(
              buildWhen: (previous, current) =>
                  previous.loadingStatus != current.loadingStatus,
              builder: (context, state) {
                if (state.loadingStatus ==
                    const PrayNotificationSettingProcessState.loading()) {
                  return const SizedBox(
                    child: Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xff292929),
                        ),
                      ),
                    ),
                  );
                } else {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(
                            title: AppLocalizations.of(context)!
                                .notificationSettingQuick,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff444444),
                          ),
                        ),
                        const QuickNotificationView(),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(
                            title: AppLocalizations.of(context)!
                                .notificationSettingPray,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff444444),
                          ),
                        ),
                        const PrayNotificationView(),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(
                            title: AppLocalizations.of(context)!
                                .notificationSettingOther,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff444444),
                          ),
                        ),
                        const OtherNotificationView(),
                        const SizedBox(height: 5)
                      ],
                    ),
                  );
                }
              }),
        ),
      ),
    );
  }
}
