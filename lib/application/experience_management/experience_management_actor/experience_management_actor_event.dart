part of 'experience_management_actor_bloc.dart';

@freezed
class ExperienceManagementActorEvent with _$ExperienceManagementActorEvent {
  const factory ExperienceManagementActorEvent.checkCreator(
    Experience experience,
  ) = _CheckCreator;

  const factory ExperienceManagementActorEvent.deleted(
    Experience experience,
  ) = _Deleted;
}
