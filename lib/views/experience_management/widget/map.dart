import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';

class Map extends StatelessWidget {
  const Map({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _position = LatLng(
      context.bloc<ExperienceManagementFormBloc>().state.experience.coordinates.latitude.getOrCrash(),
      context.bloc<ExperienceManagementFormBloc>().state.experience.coordinates.longitude.getOrCrash(),
    );
    return Column(
      children: [
        const Text(
          "Set the initial location",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: GoogleMap(
            mapType: MapType.satellite,
            markers: {
              Marker(
                markerId: MarkerId("new_experience"),
                position: _position,
              ),
            },
            onLongPress: (argument) => context.bloc<ExperienceManagementFormBloc>().add(
                  ExperienceManagementFormEvent.coordinatesChanged(
                    latitude: argument.latitude,
                    longitude: argument.longitude,
                  ),
                ),
            gestureRecognizers: {
              Factory<OneSequenceGestureRecognizer>(
                () => EagerGestureRecognizer(),
              ),
            },
            initialCameraPosition: CameraPosition(
              target: _position,
            ),
          ),
        ),
      ],
    );
  }
}
