import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/hisn_al_muslim/bloc/hisn_al_muslim_bloc.dart';
import 'package:islam_app/presentation/hisn_al_muslim/widgets/hisn_main_card_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';

class HisnAlMuslimScreen extends StatelessWidget {
  const HisnAlMuslimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HisnAlMuslimBloc()..add(const HisnAlMuslimEvent.started()),
      child: Scaffold(
        backgroundColor: const Color(0xfffff2e9),
        appBar: CustomAppBar(
          title: IslamMobLocalizations.of(context).hesenAlMuslim,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Image.asset("assets/images/hisnalmuslim.png"),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: BlocBuilder<HisnAlMuslimBloc, HisnAlMuslimState>(
                    buildWhen: (previous, current) =>
                        previous.list != current.list,
                    builder: (context, state) {
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 16,
                          childAspectRatio: 2,
                          mainAxisExtent: 75,
                        ),
                        physics: const ClampingScrollPhysics(),
                        itemCount: state.list.length,
                        itemBuilder: (context, index) {
                          return HisnMainCardView(
                            item: state.list[index],
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              Container(
                color: Colors.amber,
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
