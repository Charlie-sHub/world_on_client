part of 'map_controller_bloc.dart';

@freezed
abstract class MapControllerState with _$MapControllerState {
  const factory MapControllerState({
    @required Coordinates coordinates,
    @required KtList<Objective> objectives,
    @required double zoom,
  }) = _MapControllerState;

  factory MapControllerState.initial() => MapControllerState(
        coordinates: Coordinates.empty(),
        objectives: const KtList.empty(),
        zoom: 5,
      );
}
