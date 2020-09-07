import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:worldon/application/experience_navigation/map_controller/map_controller_bloc.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';

class MapTabView extends StatelessWidget {
  final Experience experience;

  const MapTabView({
    Key key,
    @required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapControllerBloc, MapControllerState>(
      builder: (context, state) => GoogleMap(
        mapType: MapType.satellite,
        markers: state.objectives.asList().map(_mapObjectiveToMarker).toSet(),
        onCameraMove: (position) => _onCameraMoved(context, position),
        initialCameraPosition: CameraPosition(
          target: LatLng(
            state.coordinates.latitude.getOrCrash(),
            state.coordinates.longitude.getOrCrash(),
          ),
          zoom: state.zoom,
        ),
      ),
    );
  }

  Marker _mapObjectiveToMarker(Objective _objective) {
    return Marker(
      markerId: MarkerId(_objective.id.toString()),
      position: LatLng(
        _objective.coordinates.latitude.getOrCrash(),
        _objective.coordinates.longitude.getOrCrash(),
      ),
      infoWindow: InfoWindow(
        // TODO: Rework this so tapping on the info window also accomplishes the objective
        // Tried that before but leads to some odd behaviour
        // Gotta look into it more carefully later
        title: _objective.description.getOrCrash(),
        snippet: "Tap to complete",
      ),
    );
  }

  void _onCameraMoved(BuildContext context, CameraPosition position) => context.bloc<MapControllerBloc>().add(
        MapControllerEvent.cameraPositionChanged(
          coordinates: Coordinates(
            latitude: Latitude(position.target.latitude),
            longitude: Longitude(position.target.longitude),
          ),
          zoom: position.zoom,
        ),
      );
}
