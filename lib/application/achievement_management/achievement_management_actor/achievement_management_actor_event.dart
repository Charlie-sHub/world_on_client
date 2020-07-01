part of 'achievement_management_actor_bloc.dart';

@freezed
abstract class AchievementManagementActorEvent with _$AchievementManagementActorEvent {
  const factory AchievementManagementActorEvent.delete(Achievement achievement) = _Deleted;
}
