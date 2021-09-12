import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AdventureMap extends StatelessWidget {
  const AdventureMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Create bloc that controls:
    // initialCameraPosition:
    //  target
    //  zoom
    // marker:
    //  User's position (Should it center there always?)
    // onCameraMove:
    //  Changes the zoom and coordinates
    // TODO: Get the recommended list and display the experiences as markers
    return const GoogleMap(
      mapType: MapType.hybrid,
      myLocationEnabled: true,
      mapToolbarEnabled: false,
      zoomControlsEnabled: false,
      initialCameraPosition: CameraPosition(
        target: LatLng(
          0,
          0,
        ),
        tilt: 45,
      ),
    );
  }
}
