import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/get_current_location.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

part 'adventure_map_controller_bloc.freezed.dart';
part 'adventure_map_controller_event.dart';
part 'adventure_map_controller_state.dart';

@lazySingleton
class AdventureMapControllerBloc
    extends Bloc<AdventureMapControllerEvent, AdventureMapControllerState> {
  AdventureMapControllerBloc() : super(AdventureMapControllerState.initial());

  @override
  Stream<AdventureMapControllerState> mapEventToState(
    AdventureMapControllerEvent event,
  ) async* {
    yield* event.map(
      initialized: _onInitialized,
      cameraPositionChanged: _onCameraPositionChanged,
      experiencesChanged: _onExperiencesChanged,
    );
  }

  Stream<AdventureMapControllerState> _onExperiencesChanged(
    _ExperiencesChanged event,
  ) async* {
    yield state.copyWith(
      experiences: event.experiences,
    );
  }

  Stream<AdventureMapControllerState> _onCameraPositionChanged(
    _CameraPositionChanged event,
  ) async* {
    yield state.copyWith(
      coordinates: event.coordinates,
      zoom: event.zoom,
    );
  }

  Stream<AdventureMapControllerState> _onInitialized(
    _Initialized event,
  ) async* {
    final _getLocation = getIt<GetCurrentLocation>();
    final _coordinatesOrFailure = await _getLocation.call(
      getIt<NoParams>(),
    );
    yield _coordinatesOrFailure.fold(
      (failure) => state.copyWith(
        loadedCoordinates: false,
      ),
      (coordinates) => state.copyWith(
        coordinates: coordinates,
        loadedCoordinates: true,
      ),
    );
  }
}
