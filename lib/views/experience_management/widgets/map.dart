import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:worldon/application/experience_management/experience_management_form/experience_management_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';

class Map extends StatelessWidget {
  final GlobalKey<State<StatefulWidget>> showKey;

  const Map({
    Key? key,
    required this.showKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _editingFormState = context.read<ExperienceManagementFormBloc>().state;
    final _position = LatLng(
      _editingFormState.experience.coordinates.latitude.getOrCrash(),
      _editingFormState.experience.coordinates.longitude.getOrCrash(),
    );
    return Column(
      children: [
        Text(
          S.of(context).experienceSetInitialLocation,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            // Not happy about this at all, there has to be a better way to build the map once coordinates have been gotten
            // Works for now though and that's what matters.
            child: _editingFormState.loadedCoordinates
                ? Showcase(
                    key: showKey,
                    description: S.of(context).mapShowCase,
                    overlayPadding: const EdgeInsets.all(5),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: GoogleMap(
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
                      ),
                    ),
                  )
                : const WorldOnProgressIndicator(
                    size: 50,
                  ),
          ),
        ),
      ],
    );
  }
}
