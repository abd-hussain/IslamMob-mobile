import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/presentation/estekara/bloc/estekara_bloc.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';

class EstekaraScreen extends StatelessWidget {
  const EstekaraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = IslamMobLocalizations.of(context);

    return Scaffold(
      backgroundColor: const Color(0xfffff2e9),
      appBar: AppBar(
        backgroundColor: const Color(0xff292929),
        iconTheme: const IconThemeData(color: Colors.white),
        title: CustomText(
          title: localizations.estekaraTitle,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: BlocProvider(
        create: (context) => EstekaraBloc()
          ..add(
            const EstekaraEvent.fillInitialValue(),
          ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/estekara_be.png", fit: BoxFit.cover),
              const SizedBox(height: 10),
              BlocBuilder<EstekaraBloc, EstekaraState>(
                buildWhen: (previous, current) =>
                    previous.listOfItems != current.listOfItems,
                builder: (context, state) {
                  return ListView.builder(
                      itemCount: state.listOfItems.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  title: state.isRtlLanguage
                                      ? state.listOfItems[index].title.ar
                                      : state.listOfItems[index].title.en,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  maxLines: 2,
                                  color: const Color(0xff444444),
                                ),
                                const SizedBox(height: 5),
                                ListView.builder(
                                  itemBuilder: (context, detailIndex) {
                                    final details =
                                        state.listOfItems[index].details[
                                            state.isRtlLanguage ? 'ar' : 'en'];
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: CustomText(
                                        title: details?[detailIndex] ?? "",
                                        fontSize: 16,
                                        maxLines: 25,
                                        color: const Color(0xff666666),
                                      ),
                                    );
                                  },
                                  itemCount: state
                                          .listOfItems[index]
                                          .details[
                                              state.isRtlLanguage ? 'ar' : 'en']
                                          ?.length ??
                                      0,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
