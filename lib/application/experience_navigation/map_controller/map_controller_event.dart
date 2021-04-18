part of 'map_controller_bloc.dart';

@freezed
class MapControllerEvent with _$MapControllerEvent {
  const factory MapControllerEvent.initialized(Experience experience) = _Initialized;

  const factory MapControllerEvent.cameraPositionChanged({
    required Coordinates coordinates,
    required double zoom,
  }) = _CameraPositionChanged;

  const factory MapControllerEvent.objectivesChanged(KtList<Objective> objectives) = _ObjectivesChanged;
}
