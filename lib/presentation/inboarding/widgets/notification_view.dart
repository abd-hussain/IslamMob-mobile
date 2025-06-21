import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/inboarding/bloc/notification/notifications_bloc.dart';
import 'package:islam_app/presentation/inboarding/widgets/sub_widgets/notification_have_permission_view.dart';
import 'package:islam_app/presentation/inboarding/widgets/sub_widgets/notification_idle_view.dart';
import 'package:islam_app/presentation/inboarding/widgets/sub_widgets/notification_nothave_permission_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:lottie/lottie.dart';

/// A widget that displays the notification permission setup screen during onboarding.
///
/// This widget handles notification permission requests and allows users to
/// either grant notification access for prayer time reminders and other app
/// notifications, or skip this step. It manages different states including
/// idle, loading, permission denied, and permission granted.
class NotificationInBoardingView extends StatelessWidget {
  /// Callback function called when the user completes notification setup.
  ///
  /// This function is invoked after the user either grants notification
  /// permission and confirms their choice, or skips the notification setup.
  final Function() doneSelection;

  /// Creates a [NotificationInBoardingView] widget.
  ///
  /// The [doneSelection] callback is required and will be called when
  /// the user successfully completes the notification permission setup
  /// or chooses to skip this step.
  const NotificationInBoardingView({super.key, required this.doneSelection});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationsBloc(),
      child: Padding(
        padding: const EdgeInsets.all(8),
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
      title: IslamMobLocalizations.of(context).allowSendingNotifications,
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
        builder: _buildStateContent,
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
          skipButton: doneSelection,
        );
      case NotificationsProcessStateHavePermission():
        return NotificationHavePermissionView(
          onConfirmationPress: doneSelection,
        );
    }
  }
}
