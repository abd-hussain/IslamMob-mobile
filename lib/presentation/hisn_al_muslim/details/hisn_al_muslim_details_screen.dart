import 'package:advertisments_manager/advertisments_manager.dart';
import 'package:firebase_manager/firebase_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/domain/constants/argument_constant.dart';
import 'package:islam_app/domain/model/hisn_al_muslim.dart';
import 'package:islam_app/presentation/hisn_al_muslim/details/bloc/hisn_al_muslim_details_bloc.dart';
import 'package:islam_app/presentation/hisn_al_muslim/details/widgets/hisn_al_muslim_view.dart';
import 'package:islam_app/shared_widgets/appbar/custom_appbar.dart';

class HisnAlMuslimDetailsScreen extends StatefulWidget {
  const HisnAlMuslimDetailsScreen({super.key});

  @override
  State<HisnAlMuslimDetailsScreen> createState() => _HisnAlMuslimDetailsScreenState();
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
      create: (context) => HisnAlMuslimDetailsBloc()..add(HisnAlMuslimDetailsEvent.fillInitialValue(hisnAlMuslimModel)),
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
        actions: [_buildFavoriteButton(context, state)],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: _buildPageView(state)),
            const AddMobBanner(size: AdsBannerSize.fullBanner),
          ],
        ),
      ),
    );
  }

  /// Builds the PageView for displaying content
  Widget _buildPageView(HisnAlMuslimDetailsState state) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: PageView.builder(
        itemCount: state.item?.list.length ?? 0,
        controller: controller,
        itemBuilder: (context, index) {
          return HisnAlMuslimView(
            index: index + 1,
            totalLength: state.item?.list.length ?? 0,
            hisnAlMuslimDetailsModel: state.item?.list[index],
            reachMaxCount: () {
              controller.animateToPage(controller.page!.toInt() + 1,
                  duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
            },
          );
        },
      ),
    );
  }

  /// Builds the Favorite button in the AppBar
  Widget _buildFavoriteButton(BuildContext context, HisnAlMuslimDetailsState state) {
    final isFavorite = state.item?.isFavorite ?? false;

    return IconButton(
      onPressed: () {
        //TODO
        // context.read<HisnAlMuslimDetailsBloc>().add(
        //       HisnAlMuslimDetailsEvent.addRemoveItemFromFavorite(state.item),
        //     );
      },
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
    );
  }
}
