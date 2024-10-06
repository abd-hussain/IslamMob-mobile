import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/sub_pages/masahef_list/bloc/masahef_bloc.dart';
import 'package:islam_app/screens/tabs/quran_kareem/sub_pages/masahef_list/widgets/copy_tile.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MasaheefScreen extends StatelessWidget {
  const MasaheefScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MasahefBloc(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff292929),
          iconTheme: const IconThemeData(color: Colors.white),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                title: AppLocalizations.of(context)!.quranprints,
                fontSize: 14,
              )
            ],
          ),
        ),
        body: BlocBuilder<MasahefBloc, MasahefState>(
          buildWhen: (previous, current) {
            return previous.listOfPrints != current.listOfPrints;
          },
          builder: (context, state) {
            return state.listOfPrints == null
                ? const SizedBox(
                    child: Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0xff292929),
                        ),
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: state.listOfPrints!.length,
                    itemBuilder: (context, index) {
                      return MushafCopyTile(
                        previewImage: state.listOfPrints![index].previewImage,
                        title: state.listOfPrints![index].nameReferance,
                        description: state.listOfPrints![index].description,
                        language: context
                            .read<MasahefBloc>()
                            .getNameByLanguageCode(
                                state.listOfPrints![index].language ?? ""),
                      );
                    },
                  );
          },
        ),
      ),
    );
  }
}
