part of 'achievement_management_actor_bloc.dart';

@freezed
class AchievementManagementActorEvent with _$AchievementManagementActorEvent {
  const factory AchievementManagementActorEvent.deleted(Achievement achievement) = _Deleted;
}
