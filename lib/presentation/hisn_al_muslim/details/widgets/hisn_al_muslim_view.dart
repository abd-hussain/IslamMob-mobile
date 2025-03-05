import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/presentation/hisn_al_muslim/details/widgets/hisn_al_muslim_counter_view.dart';

class HisnAlMuslimView extends StatefulWidget {
  final HisnAlMuslimDetailsModel? hisnAlMuslimDetailsModel;
  final int index;
  final int totalLength;
  final Function() reachMaxCount;

  const HisnAlMuslimView({
    super.key,
    required this.hisnAlMuslimDetailsModel,
    required this.index,
    required this.totalLength,
    required this.reachMaxCount,
  });

  @override
  State<HisnAlMuslimView> createState() => _HisnAlMuslimViewState();
}

class _HisnAlMuslimViewState extends State<HisnAlMuslimView> {
  void _incrementCount() {
    if ((widget.hisnAlMuslimDetailsModel?.readCount ?? 0) > (widget.hisnAlMuslimDetailsModel?.currentCount ?? 0)) {
      setState(() => widget.hisnAlMuslimDetailsModel?.currentCount++);
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
            child: Column(
              children: [
                _buildTitleText(context),
                _buildDescriptionText(context),
                const Divider(color: Color(0xff444444)),
                _buildReferenceText(context),
                const Expanded(child: SizedBox()),
                _buildCounterView(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitleText(BuildContext context) {
    final title = widget.hisnAlMuslimDetailsModel?.descriptionTitle ?? "";
    if (title.isEmpty) return const SizedBox();

    return Text(
      title,
      style: _uthmanTextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDescriptionText(BuildContext context) {
    return Text(
      widget.hisnAlMuslimDetailsModel?.description ?? "",
      style: _uthmanTextStyle(fontSize: 22),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildReferenceText(BuildContext context) {
    return Text(
      widget.hisnAlMuslimDetailsModel?.referance ?? "",
      style: _uthmanTextStyle(fontSize: 16),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildCounterView() {
    return HisnAlMuslimCounterView(
      readCount: widget.hisnAlMuslimDetailsModel?.readCount ?? 0,
      totalLength: widget.totalLength,
      index: widget.index,
      currentCount: widget.hisnAlMuslimDetailsModel?.currentCount ?? 0,
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
