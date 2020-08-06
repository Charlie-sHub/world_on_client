part of 'tag_selector_bloc.dart';

@freezed
abstract class TagSelectorState with _$TagSelectorState {
  const factory TagSelectorState({@required KtSet<Tag> tagsSelected}) = _TagSearchFormState;

  factory TagSelectorState.initial() => TagSelectorState(tagsSelected: KtSet.empty());
}
