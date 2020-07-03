part of 'experience_management_actor_bloc.dart';

@freezed
abstract class ExperienceManagementActorEvent with _$ExperienceManagementActorEvent {
  const factory ExperienceManagementActorEvent.delete(Experience experience) = _Delete;
}
