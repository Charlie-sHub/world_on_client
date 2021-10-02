import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:worldon/application/experience_navigation/adventure_map_controller/adventure_map_controller_bloc.dart';
import 'package:worldon/application/experience_navigation/recommended_experiences_watcher/recommended_experiences_watcher_bloc.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class AdventureMap extends StatelessWidget {
  const AdventureMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<RecommendedExperiencesWatcherBloc,
        RecommendedExperiencesWatcherState>(
      listener: (context, state) => state.maybeMap(
        loadSuccess: (successState) =>
            context.read<AdventureMapControllerBloc>().add(
                  AdventureMapControllerEvent.experiencesChanged(
                    successState.experiences,
                  ),
                ),
        orElse: () => null,
      ),
      child:
          BlocBuilder<AdventureMapControllerBloc, AdventureMapControllerState>(
        builder: (context, state) => state.loadedCoordinates
            ? GoogleMap(
                mapType: MapType.hybrid,
                myLocationEnabled: true,
                mapToolbarEnabled: false,
                zoomControlsEnabled: false,
                onCameraMove: (position) => _onCameraMoved(
                  context,
                  position,
                ),
                // TODO: Figure out way to add the user marker
                markers: state.experiences
                    .asList()
                    .map(
                      (experience) => _mapExperienceToMarker(
                        experience,
                        context,
                      ),
                    )
                    .toSet(),
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
                size: 50,
              ),
      ),
    );
  }

  Marker _mapExperienceToMarker(
    Experience experience,
    BuildContext context,
  ) =>
      Marker(
        markerId: MarkerId(
          experience.id.toString(),
        ),
        position: LatLng(
          experience.coordinates.latitude.getOrCrash(),
          experience.coordinates.longitude.getOrCrash(),
        ),
        infoWindow: InfoWindow(
          title: experience.description.getOrCrash(),
        ),
      );

  void _onCameraMoved(
    BuildContext context,
    CameraPosition position,
  ) =>
      context.read<AdventureMapControllerBloc>().add(
            AdventureMapControllerEvent.cameraPositionChanged(
              coordinates: Coordinates(
                latitude: Latitude(position.target.latitude),
                longitude: Longitude(position.target.longitude),
              ),
              zoom: position.zoom,
            ),
          );
}
