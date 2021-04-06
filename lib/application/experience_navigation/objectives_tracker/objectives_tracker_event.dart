part of 'objectives_tracker_bloc.dart';

@freezed
abstract class ObjectivesTrackerEvent with _$ObjectivesTrackerEvent {
  const factory ObjectivesTrackerEvent.initialized(ObjectiveList objectiveSet) = _Initialized;

  const factory ObjectivesTrackerEvent.objectiveAccomplished(Objective objective) = _ObjectiveAccomplished;
}
