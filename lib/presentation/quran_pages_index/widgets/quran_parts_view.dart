import 'package:flutter/material.dart';
import 'package:islam_app/domain/usecase/quran_pages_index_usecase.dart';
import 'package:islam_app/presentation/quran_pages_index/widgets/sub_widgets/part_tile_view.dart';

/// A widget that displays a list of Quran parts (Juz) for navigation.
///
/// This widget shows all available Quran parts in a scrollable list,
/// highlighting the currently selected part and allowing users to
/// navigate to different parts of the Quran.
class QuranPartsView extends StatelessWidget {
  /// The name of the currently selected Quran part.
  ///
  /// This is used to highlight the current part in the list.
  final String currentPartName;

  /// Callback function called when a part is selected.
  ///
  /// Takes the part number as a string parameter and is typically
  /// used to navigate to the selected Quran part.
  final Function(String partNumber) onPartSelected;

  /// Creates a [QuranPartsView] widget.
  ///
  /// Both [onPartSelected] and [currentPartName] are required parameters.
  /// The [onPartSelected] callback will be invoked when a user taps on
  /// a part tile, and [currentPartName] is used to highlight the active part.
  const QuranPartsView(
      {super.key, required this.onPartSelected, required this.currentPartName});

  @override
  Widget build(BuildContext context) {
    final partNames = QuranPagesIndexUseCase.getAllJuzNames(context: context);

    return Padding(
      padding: const EdgeInsets.all(4),
      child: ListView.builder(
          itemCount: partNames.length,
          itemBuilder: (context, index) {
            final partName = partNames[index];
            final isCurrent = currentPartName == partName;
            return PartTileView(
              index: index,
              partName: partName,
              isCurrentPart: isCurrent,
              onTap: () => onPartSelected((index + 1).toString()),
            );
          }),
    );
  }
}
