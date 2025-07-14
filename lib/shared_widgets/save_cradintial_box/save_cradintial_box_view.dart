import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/l10n/gen/app_localizations.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:islam_app/shared_widgets/save_cradintial_box/bloc/save_cradintial_box_bloc.dart';

class SaveCradintialBoxView extends StatelessWidget {
  final void Function(bool selectionStatue) onChange;
  const SaveCradintialBoxView({super.key, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SaveCradintialBoxBloc(),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            BlocBuilder<SaveCradintialBoxBloc, SaveCradintialBoxState>(
              buildWhen: (previous, current) =>
                  previous.saveCraditialEnabled != current.saveCraditialEnabled,
              builder: (context, state) {
                onChange(state.saveCraditialEnabled);
                return Checkbox(
                  checkColor: Colors.white,
                  activeColor: const Color(0xff034061),
                  value: state.saveCraditialEnabled,
                  onChanged: (val) => context.read<SaveCradintialBoxBloc>().add(
                    SaveCradintialBoxEvent.saveCradintialsChanged(
                      value: val ?? false,
                    ),
                  ),
                );
              },
            ),
            CustomText(
              title: IslamMobLocalizations.of(
                context,
              ).saveemailandpasswordfornextlogin,
              fontSize: 12,
              color: const Color(0xff212C34),
            ),
          ],
        ),
      ),
    );
  }
}
