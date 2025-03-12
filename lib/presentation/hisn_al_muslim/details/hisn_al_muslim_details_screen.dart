import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/constants/argument_constant.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/presentation/hisn_al_muslim/details/bloc/hisn_al_muslim_details_bloc.dart';
import 'package:islam_app/presentation/hisn_al_muslim/details/widgets/hisn_al_muslim_text_view.dart';
import 'package:islam_app/presentation/hisn_al_muslim/details/widgets/hisn_al_muslim_with_counter_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';

class HisnAlMuslimDetailsScreen extends StatefulWidget {
  const HisnAlMuslimDetailsScreen({super.key});

  @override
  State<HisnAlMuslimDetailsScreen> createState() =>
      _HisnAlMuslimDetailsScreenState();
}

class _HisnAlMuslimDetailsScreenState extends State<HisnAlMuslimDetailsScreen> {
  PageController controller = PageController();
  @override
  void initState() {
    super.initState();
    FirebaseAnalyticsRepository.logEvent(name: "HisnAlMuslimDetailsScreen");
  }

  /// Extract arguments safely
  HisnAlMuslimModel? _getHisnAlMuslimModel(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is Map<String, dynamic>) {
      return args[ArgumentConstant.hisnAlMuslimItem] as HisnAlMuslimModel?;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final hisnAlMuslimModel = _getHisnAlMuslimModel(context);

    return BlocProvider(
      create: (context) => HisnAlMuslimDetailsBloc()
        ..add(HisnAlMuslimDetailsEvent.fillInitialValue(hisnAlMuslimModel)),
      child: BlocBuilder<HisnAlMuslimDetailsBloc, HisnAlMuslimDetailsState>(
        buildWhen: (previous, current) => previous.item != current.item,
        builder: _buildScaffold,
      ),
    );
  }

  /// Builds the main Scaffold widget
  Widget _buildScaffold(BuildContext context, HisnAlMuslimDetailsState state) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF2E9),
      appBar: CustomAppBar(
        title: state.item?.title ?? "",
        actions: [
          _buildFavoriteButton(context, state),
          _buildShareButton(context, state),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child:
                  state.item != null ? _buildPageView(state) : const SizedBox(),
            ),
            const AddMobBanner(
              size: AdsBannerSize.fullBanner,
              verticalPadding: 0,
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the PageView for displaying content
  Widget _buildPageView(HisnAlMuslimDetailsState state) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: switch (state.item!.details) {
          HisnAlMuslimModelStateText(
            :final List<String> list,
            :final List<String> referance
          ) =>
            HisnAlMuslimTextView(
              list: list,
              referance: referance,
            ),
          HisnAlMuslimModelStateCounter(
            :final List<HisnAlMuslimDetailsModel> list
          ) =>
            PageView.builder(
              itemCount: list.length,
              controller: controller,
              itemBuilder: (context, index) {
                final HisnAlMuslimDetailsModel details = list[index];
                context.read<HisnAlMuslimDetailsBloc>().add(
                    HisnAlMuslimDetailsEvent.updateTextToShare(
                        description:
                            "${details.descriptionTitle} ${details.description}"));
                return HisnAlMuslimWithCounterView(
                  index: index + 1,
                  totalLength: list.length,
                  hisnAlMuslimDetailsModel: details,
                  reachMaxCount: () {
                    controller.animateToPage(controller.page!.toInt() + 1,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn);
                  },
                );
              },
            ),
        });
  }

  /// Builds the Favorite button in the AppBar
  Widget _buildFavoriteButton(
      BuildContext context, HisnAlMuslimDetailsState state) {
    final isFavorite = state.item?.isFavorite ?? false;

    return IconButton(
      onPressed: () => context
          .read<HisnAlMuslimDetailsBloc>()
          .add(const HisnAlMuslimDetailsEvent.updateFavoriteItem()),
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
    );
  }

  /// Builds the Share button in the AppBar
  Widget _buildShareButton(
      BuildContext context, HisnAlMuslimDetailsState state) {
    return IconButton(
      onPressed: () => context
          .read<HisnAlMuslimDetailsBloc>()
          .add(HisnAlMuslimDetailsEvent.shareItem(
            title: state.item?.title ?? "",
          )),
      icon: const Icon(Icons.ios_share_rounded),
    );
  }
}
