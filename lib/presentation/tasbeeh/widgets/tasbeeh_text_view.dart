import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/tasbeeh.dart';

class TasbeehTextView extends StatefulWidget {
  final TasbeehModel tasbeehItem;
  const TasbeehTextView({super.key, required this.tasbeehItem});

  @override
  State<TasbeehTextView> createState() => _TasbeehTextViewState();
}

class _TasbeehTextViewState extends State<TasbeehTextView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: _buildTasbeehContainer(
        context: context,
        title: widget.tasbeehItem.title,
        description: widget.tasbeehItem.desc,
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
          color: Colors.grey.withValues(alpha: 0.4),
          spreadRadius: 3,
          blurRadius: 3,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }
}
