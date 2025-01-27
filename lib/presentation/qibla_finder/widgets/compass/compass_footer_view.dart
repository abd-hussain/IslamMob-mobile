import 'package:flutter/material.dart';
import 'package:islam_app/presentation/qibla_finder/widgets/compass/footer_container_view.dart';

class CompassFooterView extends StatelessWidget {
  final int offset;
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
