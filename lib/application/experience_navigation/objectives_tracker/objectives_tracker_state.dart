part of 'objectives_tracker_bloc.dart';

@freezed
class ObjectivesTrackerState with _$ObjectivesTrackerState {
  const factory ObjectivesTrackerState({
    required KtList<Objective> objectivesToDo,
    required UniqueId experienceId,
    required bool isFinished,
    required bool showExplanation,
  }) = _ObjectivesTrackerState;

  factory ObjectivesTrackerState.initial() => ObjectivesTrackerState(
        objectivesToDo: const KtList.empty(),
        experienceId: UniqueId(),
        isFinished: false,
        showExplanation: true,
      );
}
