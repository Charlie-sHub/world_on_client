part of 'adventure_map_controller_bloc.dart';

@freezed
class AdventureMapControllerEvent with _$AdventureMapControllerEvent {
  const factory AdventureMapControllerEvent.initialized() = _Initialized;

  // TODO: May have to change to make the map always be centered on the user
  const factory AdventureMapControllerEvent.cameraPositionChanged({
    required Coordinates coordinates,
    required double zoom,
  }) = _CameraPositionChanged;

  const factory AdventureMapControllerEvent.experiencesChanged(
    KtList<Experience> experiences,
  ) = _ExperiencesChanged;
}
