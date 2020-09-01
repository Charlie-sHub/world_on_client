import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatelessWidget {
  const Map({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery
        .of(context)
        .size
        .height * 0.5,
      // TODO: Create a map bloc
      // For getting the current position on initialization and making the map use that as the starting position
      // Perhaps also to get the experience's starting coordinates
      child: GoogleMap(
        gestureRecognizers: {
          Factory<OneSequenceGestureRecognizer>(
              () => EagerGestureRecognizer(),
          ),
        },
        initialCameraPosition: const CameraPosition(
          target: LatLng(
            0,
            0,
          ),
          zoom: 15,
        ),
      ),
    );
  }
}
