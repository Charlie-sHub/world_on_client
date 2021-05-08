import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:worldon/application/experience_management/objective_form/objective_form_bloc.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class ObjectiveCoordinatePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _position = LatLng(
      context.read<ObjectiveFormBloc>().state.objective.coordinates.latitude.getOrCrash(),
      context.read<ObjectiveFormBloc>().state.objective.coordinates.longitude.getOrCrash(),
    );
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: context.read<ObjectiveFormBloc>().state.loadedCoordinates
          ? Card(
              clipBehavior: Clip.antiAlias,
              child: GoogleMap(
                mapType: MapType.hybrid,
                markers: {
                  Marker(
                    markerId: const MarkerId("new_objective"),
                    position: _position,
                  ),
                },
                onLongPress: (argument) => context.read<ObjectiveFormBloc>().add(
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
                myLocationEnabled: true,
                initialCameraPosition: CameraPosition(
                  zoom: 15,
                  tilt: 45,
                  target: _position,
                ),
              ),
            )
          : const WorldOnProgressIndicator(),
    );
  }
}
