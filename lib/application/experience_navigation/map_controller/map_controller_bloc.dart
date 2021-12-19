import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';

part 'map_controller_bloc.freezed.dart';
part 'map_controller_event.dart';
part 'map_controller_state.dart';

@injectable
class MapControllerBloc extends Bloc<MapControllerEvent, MapControllerState> {
  MapControllerBloc() : super(MapControllerState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_CameraPositionChanged>(_onCameraPositionChanged);
    on<_ObjectivesChanged>(_onObjectivesChanged);
  }

  void _onObjectivesChanged(_ObjectivesChanged event, Emitter emit) {
    emit(
      state.copyWith(
        objectives: event.objectives,
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

  void _onInitialized(_Initialized event, Emitter emit) {
    emit(
      state.copyWith(
        coordinates: event.experience.coordinates,
        objectives: event.experience.objectives.getOrCrash().toList(),
        loadedCoordinates: true,
      ),
    );
  }
}
