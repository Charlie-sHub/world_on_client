import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
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
  AdventureMapControllerBloc() : super(AdventureMapControllerState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_CameraPositionChanged>(_onCameraPositionChanged);
    on<_ExperiencesChanged>(_onExperiencesChanged);
  }

  void _onExperiencesChanged(_ExperiencesChanged event, Emitter emit) {
    emit(
      state.copyWith(
        experiences: event.experiences,
      ),
    );
  }

  void _onCameraPositionChanged(_CameraPositionChanged event, Emitter emit) {
    emit(
      state.copyWith(
        coordinates: event.coordinates,
        zoom: event.zoom,
      ),
    );
  }

  FutureOr<void> _onInitialized(_Initialized event, Emitter emit) async {
    final _getLocation = getIt<GetCurrentLocation>();
    final _coordinatesOrFailure = await _getLocation.call(
      getIt<NoParams>(),
    );
    emit(
      _coordinatesOrFailure.fold(
        (failure) => state.copyWith(
          loadedCoordinates: false,
        ),
        (coordinates) => state.copyWith(
          coordinates: coordinates,
          loadedCoordinates: true,
        ),
      ),
    );
  }
}
