part of 'experience_management_actor_bloc.dart';

@freezed
abstract class ExperienceManagementActorState with _$ExperienceManagementActorState {
  const factory ExperienceManagementActorState.initial() = _Initial;

  const factory ExperienceManagementActorState.isCreator() = _IsCreator;

  const factory ExperienceManagementActorState.isNotCreator() = _IsNotCreator;

  const factory ExperienceManagementActorState.actionInProgress() = _ActionInProgress;

  const factory ExperienceManagementActorState.deletionSuccess() = _DeletionSuccess;

  const factory ExperienceManagementActorState.deletionFailure(Failure<dynamic> failure) = _DeletionFailure;
}
