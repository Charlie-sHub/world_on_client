part of 'tag_management_actor_bloc.dart';

@freezed
class TagManagementActorEvent with _$TagManagementActorEvent {
  const factory TagManagementActorEvent.deleted(Tag tag) = _Deleted;
}
