part of 'achievement_management_actor_bloc.dart';

@freezed
class AchievementManagementActorState with _$AchievementManagementActorState {
  const factory AchievementManagementActorState.initial() = _Initial;

  const factory AchievementManagementActorState.actionInProgress() = _ActionInProgress;

  // dynamic was added to appease the compiler basically, maybe it'll give problems in the future
  const factory AchievementManagementActorState.deletionFailure(Failure<dynamic> failure) = _DeletionFailure;

  const factory AchievementManagementActorState.deletionSuccess() = _DeletionSuccess;
}
