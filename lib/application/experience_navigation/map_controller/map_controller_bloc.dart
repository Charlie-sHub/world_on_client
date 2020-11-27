import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';

part 'map_controller_bloc.freezed.dart';
part 'map_controller_event.dart';
part 'map_controller_state.dart';

@injectable
class MapControllerBloc extends Bloc<MapControllerEvent, MapControllerState> {
  MapControllerBloc() : super(MapControllerState.initial());

  @override
  Stream<MapControllerState> mapEventToState(MapControllerEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      cameraPositionChanged: _onCameraPositionChanged,
      objectivesChanged: _onObjectivesChanged,
    );
  }

  Stream<MapControllerState> _onObjectivesChanged(_ObjectivesChanged event) async* {
    yield state.copyWith(
      objectives: event.objectives,
    );
  }

  Stream<MapControllerState> _onCameraPositionChanged(_CameraPositionChanged event) async* {
    yield state.copyWith(
      coordinates: event.coordinates,
      zoom: event.zoom,
    );
  }

  Stream<MapControllerState> _onInitialized(_Initialized event) async* {
    yield state.copyWith(
      coordinates: event.experience.coordinates,
      objectives: event.experience.objectives.getOrCrash().toList(),
      loadedCoordinates: true,
    );
  }
}
