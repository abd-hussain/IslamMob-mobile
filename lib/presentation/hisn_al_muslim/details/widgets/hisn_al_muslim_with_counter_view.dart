import 'package:flutter/material.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/presentation/hisn_al_muslim/details/widgets/hisn_al_muslim_counter_view.dart';

/// Widget for displaying Hisn Al-Muslim supplications with interactive counter.
///
/// This widget provides a comprehensive interface for Islamic supplications
/// that require multiple recitations, combining text display with interactive
/// counting functionality. It features:
/// - **Supplication text display** with Arabic typography and translations
/// - **Interactive counter** for tracking recitation progress
/// - **Tap-to-increment** functionality for easy counting
/// - **Automatic progression** to next supplication when count is reached
/// - **Reference information** showing Islamic sources and authenticity
///
/// The widget supports Muslims in performing dhikr and repeated supplications
/// correctly according to Islamic teachings, providing both the spiritual
/// content and practical counting tools for proper Islamic practice.
class HisnAlMuslimWithCounterView extends StatefulWidget {
  /// The detailed model containing supplication content and counter information.
  final HisnAlMuslimCounterDetailsModel hisnAlMuslimDetailsModel;

  /// Whether the current language requires right-to-left text direction.
  final bool isRtlLanguage;

  /// The current index position in multi-part supplications.
  final int index;

  /// The total number of parts in this supplication series.
  final int totalLength;

  /// Callback function triggered when maximum count is reached.
  final Function() reachMaxCount;

  /// Creates a [HisnAlMuslimWithCounterView] widget for interactive supplications.
  ///
  /// Parameters:
  /// - [hisnAlMuslimDetailsModel]: The supplication data with counter information
  /// - [isRtlLanguage]: Boolean for RTL language support (Arabic, Farsi)
  /// - [index]: Current position in the supplication series
  /// - [totalLength]: Total number of parts in the series
  /// - [reachMaxCount]: Callback for when maximum count is reached
  const HisnAlMuslimWithCounterView({
    super.key,
    required this.hisnAlMuslimDetailsModel,
    required this.index,
    required this.totalLength,
    required this.reachMaxCount,
    required this.isRtlLanguage,
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
    final title = widget.isRtlLanguage
        ? widget.hisnAlMuslimDetailsModel.descriptionTitle.ar
        : widget.hisnAlMuslimDetailsModel.descriptionTitle.en;
    if (title.isEmpty) return const SizedBox();

    return Text(
      title,
      style: _uthmanTextStyle(fontSize: 20),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDescriptionText(BuildContext context) {
    return Text(
      widget.isRtlLanguage
          ? widget.hisnAlMuslimDetailsModel.description.ar
          : widget.hisnAlMuslimDetailsModel.description.en,
      style: _uthmanTextStyle(fontSize: 22),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildReferenceText(BuildContext context) {
    final listOfReferances = widget.hisnAlMuslimDetailsModel.references;
    return ListView.builder(
        shrinkWrap: true, // Ensures it takes only required space
        physics:
            const NeverScrollableScrollPhysics(), // Disables internal scrolling
        itemCount: listOfReferances.length,
        itemBuilder: (ctx, index) {
          return Text(
            widget.isRtlLanguage
                ? listOfReferances[index].ar
                : listOfReferances[index].en,
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
