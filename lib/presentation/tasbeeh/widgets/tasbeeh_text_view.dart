import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/tasbeeh.dart';

class TasbeehTextView extends StatefulWidget {
  final TasbeehModel tasbeehItem;
  const TasbeehTextView({super.key, required this.tasbeehItem});

  @override
  State<TasbeehTextView> createState() => _TasbeehTextViewState();
}

class _TasbeehTextViewState extends State<TasbeehTextView> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: isExpanded ? 200 : 100,
        child: Stack(
          children: [
            _buildTasbeehContainer(
              context: context,
              title: widget.tasbeehItem.title,
              description: widget.tasbeehItem.desc,
            ),
            Positioned(
              bottom: 0,
              left: MediaQuery.of(context).size.width / 2 - 16 - 8,
              child: InkWell(
                onTap: () => setState(() => isExpanded = !isExpanded),
                child: Container(
                  decoration: _containerDecoration(),
                  width: 30,
                  height: 30,
                  child: const Center(
                    child: Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Color(0xff444444),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Creates the container with Tasbeeh details.
  Widget _buildTasbeehContainer(
      {required BuildContext context,
      required String title,
      required String description}) {
    return Container(
      decoration: _containerDecoration(),
      height: isExpanded ? 185 : 85,
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildText(title, fontSize: 32),
            _buildText(description, fontSize: 18),
          ],
        ),
      ),
    );
  }

  /// Common text widget for title and description.
  Widget _buildText(String text, {required double fontSize}) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xff444444),
        fontFamily: 'Uthman',
        fontWeight: FontWeight.bold,
      ).copyWith(fontSize: fontSize),
      textAlign: TextAlign.center,
    );
  }

  /// Returns the decoration for the container.
  BoxDecoration _containerDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 3,
          blurRadius: 3,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }
}
