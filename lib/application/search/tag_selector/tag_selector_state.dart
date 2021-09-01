part of 'tag_selector_bloc.dart';

@freezed
class TagSelectorState with _$TagSelectorState {
  const factory TagSelectorState({required KtSet<Tag> tagsSelected}) = _TagSearchFormState;

  factory TagSelectorState.initial() => const TagSelectorState(tagsSelected: KtSet.empty());
}
