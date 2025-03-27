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
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (context) =>
              TasbeehBloc()..add(const TasbeehEvent.fillInitialValue()),
          child: BlocBuilder<TasbeehBloc, TasbeehState>(
            buildWhen: (previous, current) =>
                previous.list != current.list ||
                previous.selectedListIndex != current.selectedListIndex,
            builder: (context, state) {
              if (state.list.isEmpty) {
                return _buildLoadingIndicator();
              }

              final tasbeehItem = state.list[state.selectedListIndex];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: PageView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.list.length,
                        itemBuilder: (context, index) {
                          return Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Column(
                                children: [
                                  const Expanded(child: SizedBox()),
                                  MasbahaView(tasbeehItem: tasbeehItem),
                                ],
                              ),
                              TasbeehTextView(tasbeehItem: tasbeehItem),
                            ],
                          );
                        }),
                  ),
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
                    verticalPadding: 0,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  /// Displays a loading indicator when the list is empty.
  Widget _buildLoadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Color(0xff292929)),
      ),
    );
  }
}
