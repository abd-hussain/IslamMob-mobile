import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/inboarding/widgets/notification/bloc/notifications_bloc.dart';
import 'package:islam_app/screens/inboarding/widgets/sub_widgets/notification_have_permission_view.dart';
import 'package:islam_app/screens/inboarding/widgets/sub_widgets/notification_idle_view.dart';
import 'package:islam_app/screens/inboarding/widgets/sub_widgets/notification_nothave_permission_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotificationInBoardingView extends StatelessWidget {
  final Function(String token) onSelect;

  const NotificationInBoardingView({super.key, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationsBloc(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Lottie.asset(
                'assets/lottie/Animation - 1731435567950.json',
                width: 200,
              ),
            ),
            const SizedBox(height: 20),
            CustomText(
              title: AppLocalizations.of(context)!.allowSendingNotifications,
              fontSize: 20,
              textColor: const Color(0xff007F37),
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: BlocBuilder<NotificationsBloc, NotificationsState>(
                buildWhen: (previous, current) =>
                    previous.status != current.status,
                builder: (context, state) {
                  switch (state.status) {
                    case NotificationsProcessStateIdl():
                      return const NotificationIdleView();
                    case NotificationsProcessStateLoading():
                      return const Center(
                        child: CircularProgressIndicator(
                          color: Color(0xff007F37),
                        ),
                      );
                    case NotificationsProcessStateNoPermission():
                      return NotificationNothavePermissionView(
                        skipButton: () => onSelect(""),
                      );
                    case NotificationsProcessStateHavePermission():
                      return NotificationHavePermissionView(
                        onConfirmationPress: (token) => onSelect(token),
                      );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
