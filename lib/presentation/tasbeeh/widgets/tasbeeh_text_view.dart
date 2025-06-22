import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/tasbeeh.dart';

/// A widget that displays Tasbeeh (dhikr) text content in a styled container.
///
/// This widget shows the Arabic text and description of a dhikr phrase
/// in a beautifully styled container with shadow effects. It uses the
/// Uthman font for proper Arabic text rendering and provides a scrollable
/// view for longer content.
class TasbeehTextView extends StatefulWidget {
  /// The Tasbeeh model containing the dhikr text and description.
  ///
  /// This model includes the Arabic title and description that will
  /// be displayed in the styled container.
  final TasbeehModel tasbeehItem;

  /// Creates a [TasbeehTextView] with the specified Tasbeeh item.
  ///
  /// The [tasbeehItem] parameter is required and contains the dhikr
  /// text and description to display.
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
  Widget _buildTasbeehContainer({
    required BuildContext context,
    required String title,
    required String description,
  }) {
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
