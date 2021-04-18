part of 'objectives_creation_bloc.dart';

@freezed
class ObjectivesCreationState with _$ObjectivesCreationState {
  const factory ObjectivesCreationState({required KtList<Objective> objectivesCreated}) = _ObjectivesCreationState;

  factory ObjectivesCreationState.initial() => const ObjectivesCreationState(objectivesCreated: KtList.empty());
}
