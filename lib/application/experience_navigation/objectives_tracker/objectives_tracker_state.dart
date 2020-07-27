part of 'objectives_tracker_bloc.dart';

@freezed
abstract class ObjectivesTrackerState implements _$ObjectivesTrackerState {
  const factory ObjectivesTrackerState({
    @required Map<Objective, bool> objectiveTracker,
    @required bool isFinished,
  }) = _ObjectivesTrackerState;

  factory ObjectivesTrackerState.initial() => const ObjectivesTrackerState(
        objectiveTracker: {},
        isFinished: false,
      );
}
