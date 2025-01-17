import 'dart:async';
import 'dart:math' show pi;

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:islam_app/shared_widgets/custom_text.dart';
import 'package:qibla_finder/qibla_finder.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:islam_app/presentation/qibla_finder/widgets/location_error_widget.dart';

class QiblahCompass extends StatefulWidget {
  const QiblahCompass({super.key});

  @override
  State<QiblahCompass> createState() => _QiblahCompassState();
}

class _QiblahCompassState extends State<QiblahCompass> {
  @override
  void dispose() {
    QiblahFinder().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: FutureBuilder(
        future: _checkLocationStatus(),
        builder: (context, AsyncSnapshot<LocationStatus> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xff008480)),
            );
          }

          if (snapshot.data!.enabled == true) {
            switch (snapshot.data!.status) {
              case LocationPermission.always:
              case LocationPermission.whileInUse:
                return const QiblahCompassWidget();

              case LocationPermission.denied:
              case LocationPermission.deniedForever:
                return const LocationErrorWidget();
              default:
                return const SizedBox();
            }
          } else {
            return const LocationErrorWidget();
          }
        },
      ),
    );
  }

  Future<LocationStatus> _checkLocationStatus() async {
    final locationStatus = await QiblahFinder.checkLocationStatus();
    if (locationStatus.enabled &&
        locationStatus.status == LocationPermission.denied) {
      await QiblahFinder.requestPermissions();
      return await QiblahFinder.checkLocationStatus();
    } else {
      return locationStatus;
    }
  }
}

class QiblahCompassWidget extends StatelessWidget {
  const QiblahCompassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: QiblahFinder.qiblahStream,
      builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(color: Color(0xff008480)),
          );
        }
        final qiblahDirection = snapshot.data!;

        //
        return Column(
          children: [
            const SizedBox(height: 16),
            SizedBox(
              height: 200,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.rotate(
                    angle: (qiblahDirection.direction * (pi / 180) * -1),
                    child: Container(
                      color: Colors.red,
                      height: 100,
                      width: 100,
                    ),
                    // child: SvgPicture.asset(
                    //   'assets/images/qibla/compass.svg',
                    //   width: MediaQuery.of(context).size.width - 150,
                    // ),
                  ),
                  //             // Transform.rotate(
                  //             //   angle: (qiblahDirection.qiblah * (pi / 180) * -1),
                  //             //   alignment: Alignment.center,
                  //             //   child: SvgPicture.asset(
                  //             //     'assets/images/qibla/needle.svg',
                  //             //     fit: BoxFit.contain,
                  //             //     height: 300,
                  //             //     alignment: Alignment.center,
                  //             //   ),
                  //             // ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Color(0xff444444),
                              size: 12,
                            ),
                            CustomText(
                              title:
                                  "${qiblahDirection.offset.toStringAsFixed(3)}°",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff444444),
                            ),
                          ],
                        ),
                        const CustomText(
                          title: "qibla direction from north",
                          fontSize: 8,
                          color: Color(0xff444444),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomText(
                          title:
                              "${qiblahDirection.direction.toStringAsFixed(1)}°",
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff444444),
                        ),
                        const CustomText(
                          title: "direction",
                          fontSize: 8,
                          color: Color(0xff444444),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // Positioned(
            //   bottom: 8,
            //   child: Text("${qiblahDirection.offset.toStringAsFixed(3)}°"),
            // ),
          ],
        );
      },
    );
  }
}
