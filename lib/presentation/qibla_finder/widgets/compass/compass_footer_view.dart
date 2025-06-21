import 'package:flutter/material.dart';
import 'package:islam_app/presentation/qibla_finder/widgets/compass/footer_container_view.dart';

/// A widget that displays the footer information for the compass view.
///
/// This widget shows the Qibla direction offset from north in degrees,
/// providing users with precise directional information for prayer orientation.
class CompassFooterView extends StatelessWidget {
  /// The offset angle in degrees from north to the Qibla direction.
  ///
  /// This value represents how many degrees the Qibla direction is
  /// offset from magnetic north, displayed to help users orient correctly.
  final int offset;

  /// Creates a [CompassFooterView] widget.
  ///
  /// The [offset] parameter is required and represents the Qibla direction
  /// offset from north in degrees.
  const CompassFooterView({super.key, required this.offset});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FooterContainerView(
          title: "qibla direction from north",
          value: "$offset°",
        ),
      ],
    );
  }
}
