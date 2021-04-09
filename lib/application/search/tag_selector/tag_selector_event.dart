part of 'tag_selector_bloc.dart';

@freezed
abstract class TagSelectorEvent with _$TagSelectorEvent {
  const factory TagSelectorEvent.initialized(TagSet tagSet) = _Initialized;

  const factory TagSelectorEvent.addedTag(Tag tag) = _AddedTag;

  const factory TagSelectorEvent.removedTag(Tag tag) = _RemovedTag;
}
