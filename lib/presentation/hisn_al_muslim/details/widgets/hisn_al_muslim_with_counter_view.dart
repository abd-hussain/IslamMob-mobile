import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/presentation/hisn_al_muslim/details/widgets/hisn_al_muslim_counter_view.dart';

class HisnAlMuslimWithCounterView extends StatefulWidget {
  final HisnAlMuslimDetailsModel hisnAlMuslimDetailsModel;
  final int index;
  final int totalLength;
  final Function() reachMaxCount;

  const HisnAlMuslimWithCounterView({
    super.key,
    required this.hisnAlMuslimDetailsModel,
    required this.index,
    required this.totalLength,
    required this.reachMaxCount,
  });

  @override
  State<HisnAlMuslimWithCounterView> createState() =>
      _HisnAlMuslimWithCounterViewState();
}

class _HisnAlMuslimWithCounterViewState
    extends State<HisnAlMuslimWithCounterView> {
  void _incrementCount() {
    if ((widget.hisnAlMuslimDetailsModel.readCount) >
        (widget.hisnAlMuslimDetailsModel.currentCount)) {
      setState(() => widget.hisnAlMuslimDetailsModel.currentCount++);
    } else {
      if (widget.index < (widget.totalLength)) {
        widget.reachMaxCount();
      }
    }
  }

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
        child: InkWell(
          onTap: _incrementCount,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildTitleText(context),
                      _buildDescriptionText(context),
                      const Divider(color: Color(0xff444444)),
                      _buildReferenceText(context),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: _buildCounterView(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitleText(BuildContext context) {
    final title = widget.hisnAlMuslimDetailsModel.descriptionTitle;
    if (title.isEmpty) return const SizedBox();

    return Text(
      title,
      style: _uthmanTextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDescriptionText(BuildContext context) {
    return Text(
      widget.hisnAlMuslimDetailsModel.description,
      style: _uthmanTextStyle(fontSize: 22),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildReferenceText(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true, // Ensures it takes only required space
        physics:
            const NeverScrollableScrollPhysics(), // Disables internal scrolling
        itemCount: widget.hisnAlMuslimDetailsModel.referance.length,
        itemBuilder: (ctx, index) {
          return Text(
            widget.hisnAlMuslimDetailsModel.referance[index],
            style: _uthmanTextStyle(fontSize: 16),
            textAlign: TextAlign.start,
          );
        });
  }

  Widget _buildCounterView() {
    return HisnAlMuslimCounterView(
      readCount: widget.hisnAlMuslimDetailsModel.readCount,
      totalLength: widget.totalLength,
      index: widget.index,
      currentCount: widget.hisnAlMuslimDetailsModel.currentCount,
    );
  }

  TextStyle _uthmanTextStyle({required double fontSize}) {
    return const TextStyle(
      color: Color(0xff444444),
      fontFamily: 'Uthman',
      fontWeight: FontWeight.bold,
    ).copyWith(fontSize: fontSize);
  }
}
