part of 'objectives_tracker_bloc.dart';

@freezed
class ObjectivesTrackerEvent with _$ObjectivesTrackerEvent {
  const factory ObjectivesTrackerEvent.initialized(ObjectiveList objectiveSet) = _Initialized;

  const factory ObjectivesTrackerEvent.objectiveAccomplished(Objective objective) = _ObjectiveAccomplished;

  const factory ObjectivesTrackerEvent.objectiveUnaccomplished(Objective objective) = _ObjectiveUnaccomplished;
}
