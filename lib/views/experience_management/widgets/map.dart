import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _editingFormState = context.read<ExperienceManagementFormBloc>().state;
    final _position = LatLng(
      _editingFormState.experience.coordinates.latitude.getOrCrash(),
      _editingFormState.experience.coordinates.longitude.getOrCrash(),
    );
    return Card(
      color: WorldOnColors.background,
      shape: RoundedRectangleBorder(
        side: const BorderSide(
          color: WorldOnColors.primary,
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              S.of(context).experienceSetInitialLocation,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              // Not happy about this at all, there has to be a better way to build the map once coordinates have been gotten
              // Works for now though and that's what matters.
              child: _editingFormState.loadedCoordinates
                  ? GoogleMap(
                      mapType: MapType.hybrid,
                      markers: {
                        Marker(
                          markerId: const MarkerId("new_experience"),
                          position: _position,
                        ),
                      },
                      onLongPress: (argument) => context.read<ExperienceManagementFormBloc>().add(
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
          ),
        ],
      ),
    );
  }
}
