part of 'objectives_tracker_bloc.dart';

@freezed
abstract class ObjectivesTrackerState implements _$ObjectivesTrackerState {
  const factory ObjectivesTrackerState({
    @required KtList<Objective> objectivesToDo,
    @required bool isFinished,
  }) = _ObjectivesTrackerState;

  factory ObjectivesTrackerState.initial() => const ObjectivesTrackerState(
        objectivesToDo: KtList.empty(),
        isFinished: false,
      );
}
