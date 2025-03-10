import 'package:flutter/material.dart';

class HisnAlMuslimTextView extends StatelessWidget {
  final List<String> list;
  final List<String> referance;
  const HisnAlMuslimTextView({
    super.key,
    required this.list,
    required this.referance,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 4, right: 4),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildDescriptionText(context, list),
                const Divider(color: Color(0xff444444)),
                _buildReferenceText(context, referance),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDescriptionText(BuildContext context, List<String> list) {
    return ListView.builder(
        shrinkWrap: true, // Ensures it takes only required space
        physics:
            const NeverScrollableScrollPhysics(), // Disables internal scrolling
        itemCount: list.length,
        itemBuilder: (ctx, index) {
          return Text(
            list[index],
            style: _uthmanTextStyle(fontSize: 22),
            textAlign: TextAlign.center,
          );
        });
  }

  Widget _buildReferenceText(BuildContext context, List<String> referance) {
    return ListView.builder(
        shrinkWrap: true, // Ensures it takes only required space
        physics:
            const NeverScrollableScrollPhysics(), // Disables internal scrolling
        itemCount: referance.length,
        itemBuilder: (ctx, index) {
          return Text(
            referance[index],
            style: _uthmanTextStyle(fontSize: 16),
            textAlign: TextAlign.start,
          );
        });
  }

  TextStyle _uthmanTextStyle({required double fontSize}) {
    return const TextStyle(
      color: Color(0xff444444),
      fontFamily: 'Uthman',
      fontWeight: FontWeight.bold,
    ).copyWith(fontSize: fontSize);
  }
}
