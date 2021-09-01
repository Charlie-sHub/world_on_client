part of 'tag_management_actor_bloc.dart';

@freezed
class TagManagementActorState with _$TagManagementActorState {
  const factory TagManagementActorState.initial() = _Initial;

  const factory TagManagementActorState.actionInProgress() = _ActionInProgress;

  const factory TagManagementActorState.deletionFailure(Failure<dynamic> failure) = _DeletionFailure;

  const factory TagManagementActorState.deletionSuccess() = _DeletionSuccess;
}
