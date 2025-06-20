import 'package:flutter/material.dart';
// import 'package:qibla_finder/qibla_finder.dart';

/// A compass widget for finding the Qibla direction.
///
/// This widget provides a compass interface to help users determine the
/// direction of the Qibla (towards the Kaaba in Mecca) for Islamic prayers.
/// Currently, the implementation is commented out and shows an empty container,
/// but it's designed to handle location permissions and display a compass
/// with directional indicators when fully implemented.
class QiblahCompass extends StatefulWidget {
  /// Creates a [QiblahCompass] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const QiblahCompass({super.key});

  @override
  State<QiblahCompass> createState() => _QiblahCompassState();
}

class _QiblahCompassState extends State<QiblahCompass> {
  @override
  void dispose() {
    // QiblahFinder().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8),
      // child: FutureBuilder(
      //   future: _checkLocationStatus(),
      //   builder: (context, AsyncSnapshot<LocationStatus> snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(
      //         child: CircularProgressIndicator(color: Color(0xff008480)),
      //       );
      //     }

      //     if (snapshot.data!.enabled == true) {
      //       switch (snapshot.data!.status) {
      //         case LocationPermission.always:
      //         case LocationPermission.whileInUse:
      //           return const QiblahCompassWidget();

      //         case LocationPermission.denied:
      //         case LocationPermission.deniedForever:
      //           return const LocationErrorWidget();
      //         default:
      //           return const SizedBox();
      //       }
      //     } else {
      //       return const LocationErrorWidget();
      //     }
      //   },
      // ),
    );
  }

  // Future<LocationStatus> _checkLocationStatus() async {
  //   final locationStatus = await QiblahFinder.checkLocationStatus();
  //   if (locationStatus.enabled && locationStatus.status == LocationPermission.denied) {
  //     await QiblahFinder.requestPermissions();
  //     return QiblahFinder.checkLocationStatus();
  //   } else {
  //     return locationStatus;
  //   }
  // }
}

// class QiblahCompassWidget extends StatelessWidget {
//   const QiblahCompassWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: QiblahFinder.qiblahStream,
//       builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(
//             child: CircularProgressIndicator(color: Color(0xff008480)),
//           );
//         }
//         final qiblahDirection = snapshot.data!;
//         // final radios = snapshot.data!;
//         final diameter = MediaQuery.of(context).size.width - 60;
//         final radios = diameter / 1.5;

//         return Column(
//           children: [
//             const SizedBox(height: 20),
//             Stack(
//               alignment: Alignment.center,
//               children: [
//                 Transform.rotate(
//                   angle: qiblahDirection.direction * (pi / 180) * -1,
//                   child: SvgPicture.asset(
//                     'assets/images/qibla/compass.svg',
//                     width: diameter,
//                     height: diameter,
//                   ),
//                 ),
//                 Transform.rotate(
//                   angle: qiblahDirection.qiblah * (pi / 180) * -1,
//                   child: SvgPicture.asset(
//                     'assets/images/qibla/needle.svg',
//                     width: radios,
//                     height: radios,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             CompassFooterView(
//               offset: qiblahDirection.offset,
//             ),
//             Row(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         spreadRadius: 1,
//                         blurRadius: 1,
//                         offset: const Offset(0, 1),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             const Icon(
//                               Icons.location_on,
//                               color: Color(0xff444444),
//                               size: 12,
//                             ),
//                             CustomText(
//                               title: "${qiblahDirection.offset}°",
//                               fontSize: 12,
//                               fontWeight: FontWeight.w600,
//                               color: const Color(0xff444444),
//                             ),
//                           ],
//                         ),
//                         const CustomText(
//                           title: "qibla direction from north",
//                           fontSize: 8,
//                           color: Color(0xff444444),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(color: Colors.grey),
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.withOpacity(0.5),
//                         spreadRadius: 1,
//                         blurRadius: 1,
//                         offset: const Offset(0, 1),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Column(
//                       children: [
//                         CustomText(
//                           title: "${qiblahDirection.direction}°",
//                           fontSize: 12,
//                           fontWeight: FontWeight.w600,
//                           color: const Color(0xff444444),
//                         ),
//                         const CustomText(
//                           title: "direction",
//                           fontSize: 8,
//                           color: Color(0xff444444),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
