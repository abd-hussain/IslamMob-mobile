import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/inboarding/bloc/notification/notifications_bloc.dart';
import 'package:islam_app/presentation/inboarding/widgets/sub_widgets/notification_have_permission_view.dart';
import 'package:islam_app/presentation/inboarding/widgets/sub_widgets/notification_idle_view.dart';
import 'package:islam_app/presentation/inboarding/widgets/sub_widgets/notification_nothave_permission_view.dart';
import 'package:custom_widgets/widgets/custom_text.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotificationInBoardingView extends StatelessWidget {
  final Function() doneSelection;
  const NotificationInBoardingView({super.key, required this.doneSelection});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationsBloc(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _buildAnimation(),
            const SizedBox(height: 20),
            _buildHeader(context),
            _buildStateView(),
          ],
        ),
      ),
    );
  }

  /// Builds the animation widget
  Widget _buildAnimation() {
    return Center(
      child: Lottie.asset(
        'assets/lottie/Animation - 1731435567950.json',
        width: 200,
      ),
    );
  }

  /// Builds the header text widget
  Widget _buildHeader(BuildContext context) {
    return CustomText(
      title: AppLocalizations.of(context)!.allowSendingNotifications,
      fontSize: 20,
      color: const Color(0xff008480),
      fontWeight: FontWeight.bold,
      textAlign: TextAlign.center,
    );
  }

  /// Builds the state view using BlocBuilder
  Widget _buildStateView() {
    return Expanded(
      child: BlocBuilder<NotificationsBloc, NotificationsState>(
        buildWhen: (previous, current) => previous.status != current.status,
        builder: (context, state) {
          return _buildStateContent(context, state);
        },
      ),
    );
  }

  /// Returns the appropriate widget based on the notification state
  Widget _buildStateContent(BuildContext context, NotificationsState state) {
    switch (state.status) {
      case NotificationsProcessStateIdl():
        return const NotificationIdleView();
      case NotificationsProcessStateLoading():
        return const Center(
          child: CircularProgressIndicator(color: Color(0xff008480)),
        );
      case NotificationsProcessStateNoPermission():
        return NotificationNothavePermissionView(
          skipButton: () => doneSelection(),
        );
      case NotificationsProcessStateHavePermission():
        return NotificationHavePermissionView(
          onConfirmationPress: () => doneSelection(),
        );
      default:
        return const SizedBox.shrink(); // Fallback in case of unexpected state
    }
  }
}
