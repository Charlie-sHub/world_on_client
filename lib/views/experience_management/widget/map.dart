import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/misc/world_on_progress_indicator.dart';

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
    return Card(
      color: WorldOnColors.background,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: WorldOnColors.primary,
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Set the initial location",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            // Not happy about this at all, there has to be a better way to build the map once coordinates have been gotten
            // Works for now though and that's what matters.
            child: context.bloc<ExperienceManagementFormBloc>().state.loadedCoordinates
                ? GoogleMap(
                    mapType: MapType.hybrid,
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
                    myLocationEnabled: true,
                    initialCameraPosition: CameraPosition(
                      zoom: 15,
                      tilt: 45,
                      target: _position,
                    ),
                  )
                : const WorldOnProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
