part of 'objectives_creation_bloc.dart';

@freezed
abstract class ObjectivesCreationState with _$ObjectivesCreationState {
  const factory ObjectivesCreationState({@required KtSet<Objective> objectivesCreated}) = _ObjectivesCreationState;

  factory ObjectivesCreationState.initial() => const ObjectivesCreationState(objectivesCreated: KtSet.empty());
}
