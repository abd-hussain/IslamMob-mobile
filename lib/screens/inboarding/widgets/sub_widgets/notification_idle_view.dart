import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/my_app/locator.dart';
import 'package:islam_app/screens/inboarding/widgets/notification/bloc/notifications_bloc.dart';
import 'package:islam_app/services/general/network_info_service.dart';
import 'package:islam_app/services/general/notification_service.dart';
import 'package:islam_app/shared_widgets/custom_button.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotificationIdleView extends StatelessWidget {
  const NotificationIdleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: CustomText(
            title:
                AppLocalizations.of(context)!.allowSendingNotificationsdetails,
            fontSize: 18,
            textColor: const Color(0xff292929),
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
            maxLins: 4,
          ),
        ),
        CustomText(
          title: AppLocalizations.of(context)!.mawaqeetalsalahdetails2,
          fontSize: 14,
          textColor: const Color(0xff292929),
          textAlign: TextAlign.center,
        ),
        const Expanded(child: SizedBox()),
        CustomButton(
          enableButton: true,
          buttonTitle: AppLocalizations.of(context)!.allowNotifications,
          onTap: () async {
            if (await locator<NetworkInfoService>()
                    .checkConnectivityonLunching() ==
                false) {
              // ignore: use_build_context_synchronously
              showNoInternetConnection(context);
              return;
            }

            // ignore: use_build_context_synchronously
            final notificationsBloc = context.read<NotificationsBloc>();

            // Update status to loading
            notificationsBloc.add(
              const NotificationsEvent.changeNotificationStatus(
                status: NotificationsProcessStateLoading(),
              ),
            );

            // Check and request notification permission
            final hasPermission =
                await NotificationService().checkAndRequestPermission();

            // Update status based on permission result
            final newStatus = hasPermission
                ? const NotificationsProcessStateHavePermission()
                : const NotificationsProcessStateNoPermission();

            notificationsBloc.add(
              NotificationsEvent.changeNotificationStatus(status: newStatus),
            );
          },
        ),
      ],
    );
  }

  void showNoInternetConnection(BuildContext context) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);
    scaffoldMessenger.showSnackBar(
      SnackBar(
          content: Text(
              AppLocalizations.of(context)!.pleasecheckyourinternetconnection)),
    );
  }
}
