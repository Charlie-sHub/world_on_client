import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:worldon/application/experience_navigation/adventure_map_controller/adventure_map_controller_bloc.dart';
import 'package:worldon/application/experience_navigation/recommended_experiences_watcher/recommended_experiences_watcher_bloc.dart';
import 'package:worldon/application/navigation/navigation_actor/navigation_actor_bloc.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class AdventureMap extends StatelessWidget {
  const AdventureMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocListener<
          RecommendedExperiencesWatcherBloc,
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
        child: BlocBuilder<AdventureMapControllerBloc,
            AdventureMapControllerState>(
          builder: (context, state) => state.loadedCoordinates
              ? GoogleMap(
                  mapType: MapType.satellite,
                  myLocationEnabled: true,
                  mapToolbarEnabled: false,
                  onCameraMove: (position) => _onCameraMoved(
                    context,
                    position,
                  ),
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
        onTap: () => context.read<NavigationActorBloc>().add(
              NavigationActorEvent.experienceNavigationTapped(
                some(experience),
              ),
            ),
      );

  void _onCameraMoved(
    BuildContext context,
    CameraPosition position,
  ) =>
      // Not sure of this context.read gives a null check error but at least it still works in the app
      // And it is more consistent with the rest of the app than using get it
      getIt<AdventureMapControllerBloc>().add(
        AdventureMapControllerEvent.cameraPositionChanged(
          coordinates: Coordinates(
            latitude: Latitude(position.target.latitude),
            longitude: Longitude(position.target.longitude),
          ),
          zoom: position.zoom,
        ),
      );
}
