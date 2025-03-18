import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/tasbeeh/bloc/tasbeeh_bloc.dart';
import 'package:islam_app/presentation/tasbeeh/widgets/masbaha_view.dart';
import 'package:islam_app/presentation/tasbeeh/widgets/tasbeeh_footer_view.dart';
import 'package:islam_app/presentation/tasbeeh/widgets/tasbeeh_text_view.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class TasbeehScreen extends StatefulWidget {
  const TasbeehScreen({super.key});

  @override
  State<TasbeehScreen> createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {
  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);

    return Scaffold(
      backgroundColor: const Color(0xfffff2e9),
      appBar: AppBar(
        backgroundColor: const Color(0xff292929),
        iconTheme: const IconThemeData(color: Colors.white),
        title: CustomText(
          title: localizations.tasbeeh,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (context) =>
              TasbeehBloc()..add(const TasbeehEvent.fillInitialValue()),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(child: TasbeehTextView()),
              const MasbahaView(),
              Padding(
                padding: const EdgeInsets.all(8),
                child: CustomText(
                  title: localizations.counterResetDaily,
                  fontSize: 12,
                  color: const Color(0xff444444),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TasbeehFooterView(),
              const AddMobBanner(
                size: AdsBannerSize.leaderboard,
                verticalPadding: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
