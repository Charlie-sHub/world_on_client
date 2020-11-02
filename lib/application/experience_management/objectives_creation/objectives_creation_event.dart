part of 'objectives_creation_bloc.dart';

@freezed
abstract class ObjectivesCreationEvent with _$ObjectivesCreationEvent {
  const factory ObjectivesCreationEvent.addedObjective(Objective objective) = _AddedObjective;

  const factory ObjectivesCreationEvent.removedObjective(Objective objective) = _RemovedObjective;
}
