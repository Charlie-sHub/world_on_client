part of 'achievement_management_actor_bloc.dart';

@freezed
abstract class AchievementManagementActorEvent with _$AchievementManagementActorEvent {
  const factory AchievementManagementActorEvent.deleted({
    @required User userRequesting,
    @required Achievement achievement,
  }) = _Deleted;
}
