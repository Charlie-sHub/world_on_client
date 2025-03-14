part of 'tag_card_actor_bloc.dart';

@freezed
class TagCardActorEvent with _$TagCardActorEvent {
  const factory TagCardActorEvent.initialized(
    Tag tag,
    Set<UniqueId> interestsIds,
  ) = _Initialized;

  const factory TagCardActorEvent.dismissedFromInterests(Tag tag) = _DismissedFromInterests;

  const factory TagCardActorEvent.addedToInterests(Tag tag) = _AddedToInterests;
}
