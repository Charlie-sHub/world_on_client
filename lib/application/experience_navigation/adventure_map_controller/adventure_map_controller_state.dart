part of 'adventure_map_controller_bloc.dart';

@freezed
class AdventureMapControllerState with _$AdventureMapControllerState {
  const factory AdventureMapControllerState({
    required Coordinates coordinates,
    required KtList<Experience> experiences,
    required double zoom,
    required bool loadedCoordinates,
  }) = _AdventureMapControllerState;

  factory AdventureMapControllerState.initial() => AdventureMapControllerState(
        coordinates: Coordinates.empty(),
        experiences: const KtList.empty(),
        loadedCoordinates: false,
        zoom: 15,
      );
}
