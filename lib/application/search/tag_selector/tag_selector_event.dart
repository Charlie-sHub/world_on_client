part of 'tag_selector_bloc.dart';

@freezed
class TagSelectorEvent with _$TagSelectorEvent {
  const factory TagSelectorEvent.initialized(Option<Either<TagSet, Set<UniqueId>>> tagsEitherOption) = _Initialized;

  const factory TagSelectorEvent.addedTag(Tag tag) = _AddedTag;

  const factory TagSelectorEvent.removedTag(Tag tag) = _RemovedTag;
}
