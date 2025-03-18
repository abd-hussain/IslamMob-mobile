import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/presentation/tasbeeh/bloc/tasbeeh_bloc.dart';

class TasbeehTextView extends StatelessWidget {
  const TasbeehTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: BlocBuilder<TasbeehBloc, TasbeehState>(
        buildWhen: (previous, current) =>
            previous.list != current.list ||
            previous.selectedListIndex != current.selectedListIndex,
        builder: (context, state) {
          if (state.list.isEmpty) {
            return _buildLoadingIndicator();
          }
          return _buildTasbeehContent(state);
        },
      ),
    );
  }

  /// Displays a loading indicator when the list is empty.
  Widget _buildLoadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Color(0xff292929)),
      ),
    );
  }

  /// Displays the Tasbeeh content inside a [PageView].
  Widget _buildTasbeehContent(TasbeehState state) {
    final tasbeehItem = state.list[state.selectedListIndex];
    return PageView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: _buildTasbeehContainer(
            title: tasbeehItem.title.ar,
            description: tasbeehItem.desc.ar,
          ),
        ),
      ],
    );
  }

  /// Creates the container with Tasbeeh details.
  Widget _buildTasbeehContainer(
      {required String title, required String description}) {
    return Container(
      decoration: _containerDecoration(),
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildText(title, fontSize: 35),
            const SizedBox(height: 8),
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
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 3,
          blurRadius: 5,
          offset: const Offset(0, 5),
        ),
      ],
    );
  }
}
