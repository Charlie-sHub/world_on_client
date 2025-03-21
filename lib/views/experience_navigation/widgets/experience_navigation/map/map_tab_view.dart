import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:worldon/application/experience_navigation/map_controller/map_controller_bloc.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class MapTabView extends StatelessWidget {
  final Experience experience;

  const MapTabView({
    Key? key,
    required this.experience,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapControllerBloc, MapControllerState>(
      builder: (context, state) => state.loadedCoordinates
          ? GoogleMap(
              mapType: MapType.hybrid,
              myLocationEnabled: true,
              mapToolbarEnabled: false,
              zoomControlsEnabled: false,
              markers: state.objectives
                  .asList()
                  .map(
                    (_objective) => _mapObjectiveToMarker(
                      _objective,
                      context,
                    ),
                  )
                  .toSet(),
              onCameraMove: (position) => _onCameraMoved(
                context,
                position,
              ),
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  state.coordinates.latitude.getOrCrash(),
                  state.coordinates.longitude.getOrCrash(),
                ),
                zoom: state.zoom,
                tilt: 45,
              ),
            )
          : const WorldOnProgressIndicator(
              size: 60,
            ),
    );
  }

  Marker _mapObjectiveToMarker(Objective objective, BuildContext context) =>
      Marker(
        markerId: MarkerId(
          objective.id.toString(),
        ),
        position: LatLng(
          objective.coordinates.latitude.getOrCrash(),
          objective.coordinates.longitude.getOrCrash(),
        ),
        infoWindow: InfoWindow(
          title: objective.description.getOrCrash(),
          snippet: S.of(context).mapMarkerSnippet,
        ),
      );

  void _onCameraMoved(
    BuildContext context,
    CameraPosition position,
  ) =>
      context.read<MapControllerBloc>().add(
            MapControllerEvent.cameraPositionChanged(
              coordinates: Coordinates(
                latitude: Latitude(position.target.latitude),
                longitude: Longitude(position.target.longitude),
              ),
              zoom: position.zoom,
            ),
          );
}
