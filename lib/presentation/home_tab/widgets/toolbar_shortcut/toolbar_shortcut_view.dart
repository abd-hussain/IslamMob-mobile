import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/my_app/islam_mob_app/routes.dart';
import 'package:islam_app/presentation/home_tab/widgets/toolbar_shortcut/toolbar_cell.dart';
import 'package:islam_app/presentation/main_container/bloc/main_container_bloc.dart';
import 'package:islam_app/shared_widgets/dialogs/share_app/share_dialog.dart';
import 'package:islam_app/shared_widgets/dialogs/support_us/support_dialog.dart';

class ToolbarShortcutView extends StatelessWidget {
  const ToolbarShortcutView({super.key});

  @override
  Widget build(BuildContext context) {
    final localize = IslamMobLocalizations.of(context);
    final navigator = Navigator.of(context, rootNavigator: true);
    return Container(
      decoration: _containerDecoration(),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: ToolbarCell(
                title: "Holy Quran",
                imagePath: "assets/images/toolbar/quran.png",
                onTap: () {
                  final bloc = context.read<MainContainerBloc>();
                  bloc.appBarKey.currentState!.animateTo(1);
                  bloc.add(
                    MainContainerEvent.changeSelectedIndex(1),
                  );
                },
              ),
            ),
            Expanded(
              child: ToolbarCell(
                title: localize.calenderSettings,
                imagePath: "assets/images/toolbar/calender.png",
                onTap: () async {
                  await FirebaseAnalyticsRepository.logEvent(
                      name: "CalenderScreenFromHomeToolBar");
                  await navigator.pushNamed(RoutesConstants.calenderScreen);
                },
              ),
            ),
            Expanded(
              child: ToolbarCell(
                title: "Qibla",
                imagePath: "assets/images/toolbar/qibla.png",
                onTap: () async {
                  await FirebaseAnalyticsRepository.logEvent(
                      name: "QiblaFinderScreenFromHomeToolBar");
                  await navigator.pushNamed(RoutesConstants.qiblaFinderScreen);
                },
              ),
            ),
            Expanded(
              child: ToolbarCell(
                title: localize.shareapp,
                imagePath: "assets/images/toolbar/share.png",
                onTap: () async {
                  await FirebaseAnalyticsRepository.logEvent(
                      name: "ShareAppFromHomeToolBar");
                  await ShareDialog().dialog(context: context);
                },
              ),
            ),
            Expanded(
              child: ToolbarCell(
                title: "Support Us",
                imagePath: "assets/images/toolbar/donate.png",
                onTap: () async {
                  await FirebaseAnalyticsRepository.logEvent(
                      name: "SupportUsFromHomeToolBar");
                  await SupportUsDialog().dialog(context: context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      color: const Color(0xff292929),
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
          color: const Color(0xff292929).withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 3), // Shadow position
        ),
      ],
    );
  }
}
