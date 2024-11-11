import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/home_tab/bloc/home_tab_bloc.dart';
import 'package:islam_app/screens/home_tab/widgets/azkar_view.dart';
import 'package:islam_app/screens/home_tab/widgets/header_view.dart';
import 'package:islam_app/screens/home_tab/widgets/salah_timing_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeTabBloc(),
      child: Builder(builder: (context) {
        return NestedScrollView(
          controller: context.read<HomeTabBloc>().scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              HomeHeaderView(
                salahType: SalahType.fajr, //TODO
                salahTime: DateTime.utc(2023, 03, 1, 3, 55, 36), //TODO
                regionName: "al qwasmeeh", //TODO
                cityName: "Amman", //TODO
              ),
            ];
          },
          body: Column(
            children: [
              BlocBuilder<HomeTabBloc, HomeTabState>(
                buildWhen: (previous, current) =>
                    previous.isBarExpanded != current.isBarExpanded,
                builder: (context, state) {
                  return SizedBox(height: state.isBarExpanded ? 0 : 75);
                },
              ),
              SalahTimingView(
                currentLanguageCode:
                    context.read<HomeTabBloc>().currentLanguageCode(),
              ),
              const AzkarView(),
            ],
          ),
        );
      }),
    );
  }
}
