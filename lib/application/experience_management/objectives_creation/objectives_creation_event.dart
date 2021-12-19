part of 'objectives_creation_bloc.dart';

@freezed
class ObjectivesCreationEvent with _$ObjectivesCreationEvent {
  const factory ObjectivesCreationEvent.initialized(
    Option<ObjectiveList> objectiveListOption,
  ) = _Initialized;

  const factory ObjectivesCreationEvent.addedObjective(
    Objective objective,
  ) = _AddedObjective;

  const factory ObjectivesCreationEvent.removedObjective(
    Objective objective,
  ) = _RemovedObjective;

  const factory ObjectivesCreationEvent.reorderedList(
    List<Objective> reorderedList,
  ) = _ReorderedList;
}
