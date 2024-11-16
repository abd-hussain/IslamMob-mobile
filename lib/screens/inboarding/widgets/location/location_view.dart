import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islam_app/screens/inboarding/widgets/location/bloc/location_bloc.dart';
import 'package:lottie/lottie.dart';

class LocationInBoardingView extends StatelessWidget {
  final Function() onSelectLocation;

  const LocationInBoardingView({super.key, required this.onSelectLocation});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocationBloc(),
      child: Column(
        children: [
          Center(
            child: Lottie.asset(
              'assets/lottie/Animation - 1731435312091.json',
              width: 100,
            ),
          ),
          Container(
            child: Text("LocationInBoardingView"),
          ),
        ],
      ),
    );
  }
}
