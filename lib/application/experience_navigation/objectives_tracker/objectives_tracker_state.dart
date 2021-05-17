part of 'objectives_tracker_bloc.dart';

@freezed
class ObjectivesTrackerState with _$ObjectivesTrackerState {
  const factory ObjectivesTrackerState({
    required KtList<Objective> objectivesToDo,
    required UniqueId experienceId,
    required bool isFinished,
  }) = _ObjectivesTrackerState;

  factory ObjectivesTrackerState.initial() => ObjectivesTrackerState(
        objectivesToDo: const KtList.empty(),
        experienceId: UniqueId(),
        isFinished: false,
      );
}
