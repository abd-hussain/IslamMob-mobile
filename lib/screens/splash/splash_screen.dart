import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SplashLoadingScreen extends StatelessWidget {
  const SplashLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: SizedBox()),
                Center(
                  child: Image.asset(
                    "assets/images/logoz/logo.png",
                    height: 150,
                    width: 150,
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  height: 50,
                  width: 50,
                  child: LoadingIndicator(
                      indicatorType: Indicator.ballSpinFadeLoader,
                      colors: [Color(0xff034061)],
                      strokeWidth: 1,
                      backgroundColor: Colors.transparent,
                      pathBackgroundColor: Colors.transparent),
                ),
                const Expanded(child: SizedBox()),
                const Text(
                  "Islam-Mob",
                  style: TextStyle(
                    color: Color(0xff444444),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "For Every Muslim",
                  style: TextStyle(
                    color: Color(0xff444444),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
