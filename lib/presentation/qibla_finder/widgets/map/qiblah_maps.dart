// import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter_qiblah/flutter_qiblah.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:islam_app/presentation/qibla_finder/widgets/location_error_widget.dart';
// import 'package:islam_app/presentation/qibla_finder/widgets/loading_indicator.dart';

/// A map widget for visualizing the Qibla direction using Google Maps.
///
/// This widget is designed to show a map interface that displays the user's
/// current location and the direction to Mecca (Qibla) for Islamic prayers.
/// Currently, the implementation is commented out and shows placeholder text,
/// but it's intended to include markers for Mecca and the user's location,
/// with a line connecting them to show the Qibla direction.
class QiblahMaps extends StatefulWidget {
  // static const meccaLatLong = LatLng(21.422487, 39.826206);
  // static final meccaMarker = Marker(
  //   markerId: const MarkerId("mecca"),
  //   position: meccaLatLong,
  //   icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
  //   draggable: false,
  // );

  /// Creates a [QiblahMaps] widget.
  ///
  /// The [key] parameter is optional and can be used to control how one widget
  /// replaces another widget in the tree.
  const QiblahMaps({super.key});

  @override
  State<QiblahMaps> createState() => _QiblahMapsState();
}

class _QiblahMapsState extends State<QiblahMaps> {
  // final Completer<GoogleMapController> _controller = Completer();
  // LatLng position = const LatLng(36.800636, 10.180358);

  // late final _future = _checkLocationStatus();
  // final _positionStream = StreamController<LatLng>.broadcast();

  // @override
  // void dispose() {
  //   _positionStream.close();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return const Text("QiblahMaps");
    // return FutureBuilder(
    //   future: _future,
    //   builder: (_, AsyncSnapshot<Position?> snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) return const LoadingIndicator();
    //     if (snapshot.hasError) {
    //       return LocationErrorWidget(
    //         error: snapshot.error.toString(),
    //       );
    //     }

    //     if (snapshot.data != null) {
    //       final loc = LatLng(snapshot.data!.latitude, snapshot.data!.longitude);
    //       position = loc;
    //     } else {
    //       _positionStream.sink.add(position);
    //     }

    //     return StreamBuilder(
    //       stream: _positionStream.stream,
    //       builder: (_, AsyncSnapshot<LatLng> snapshot) => GoogleMap(
    //         mapType: MapType.normal,
    //         zoomGesturesEnabled: true,
    //         compassEnabled: true,
    //         myLocationEnabled: true,
    //         myLocationButtonEnabled: true,
    //         initialCameraPosition: CameraPosition(
    //           target: position,
    //           zoom: 11,
    //         ),
    //         markers: <Marker>{
    //           QiblahMaps.meccaMarker,
    //           Marker(
    //             draggable: true,
    //             markerId: const MarkerId('Marker'),
    //             position: position,
    //             icon: BitmapDescriptor.defaultMarker,
    //             onTap: _updateCamera,
    //             onDragEnd: (LatLng value) {
    //               position = value;
    //               _positionStream.sink.add(value);
    //             },
    //             zIndex: 5,
    //           ),
    //         },
    //         circles: <Circle>{
    //           Circle(
    //             circleId: const CircleId("Circle"),
    //             radius: 10,
    //             center: position,
    //             fillColor: Theme.of(context).primaryColorLight.withAlpha(100),
    //             strokeWidth: 1,
    //             strokeColor: Theme.of(context).primaryColorDark.withAlpha(100),
    //             zIndex: 3,
    //           )
    //         },
    //         polylines: <Polyline>{
    //           Polyline(
    //             polylineId: const PolylineId("Line"),
    //             points: [position, QiblahMaps.meccaLatLong],
    //             color: Theme.of(context).primaryColor,
    //             width: 5,
    //             zIndex: 4,
    //             geodesic: true,
    //           )
    //         },
    //         onMapCreated: (GoogleMapController controller) {
    //           _controller.complete(controller);
    //         },
    //       ),
    //     );
    //   },
    // );
  }

  // Future<Position?> _checkLocationStatus() async {
  //   final locationStatus = await FlutterQiblah.checkLocationStatus();
  //   if (locationStatus.enabled) {
  //     return await Geolocator.getCurrentPosition();
  //   }
  //   return null;
  // }

  // void _updateCamera() async {
  //   final controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newLatLngZoom(position, 20));
  // }
}
