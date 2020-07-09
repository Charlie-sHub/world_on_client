part of 'tag_card_actor_bloc.dart';

@freezed
abstract class TagCardActorEvent with _$TagCardActorEvent {
  const factory TagCardActorEvent.initialized() = _Initialized;

  const factory TagCardActorEvent.dismissedFromInterests(Tag tag) = _DismissedFromInterests;

  const factory TagCardActorEvent.addedToInterests(Tag tag) = _AddedToInterests;
}
