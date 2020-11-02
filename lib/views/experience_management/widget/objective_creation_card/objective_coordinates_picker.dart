import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';

class ObjectiveCoordinatePicker extends StatelessWidget {
  const ObjectiveCoordinatePicker({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _position = LatLng(
      context.bloc<ObjectiveFormBloc>().state.objective.coordinates.latitude.getOrCrash(),
      context.bloc<ObjectiveFormBloc>().state.objective.coordinates.longitude.getOrCrash(),
    );
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      child: GoogleMap(
        mapType: MapType.satellite,
        markers: {
          Marker(
            markerId: MarkerId("new_objective"),
            position: _position,
          ),
        },
        onLongPress: (argument) => context.bloc<ObjectiveFormBloc>().add(
              ObjectiveFormEvent.coordinatesChanged(
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
    );
  }
}
