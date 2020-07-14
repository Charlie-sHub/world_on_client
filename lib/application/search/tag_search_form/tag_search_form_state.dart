part of 'tag_search_form_bloc.dart';

@freezed
abstract class TagSearchFormState with _$TagSearchFormState {
  const factory TagSearchFormState({
    @required Set<Tag> tagsSelected,
    // Ideally this should be an Either of Failure or Set of Tags
    // But for some reason that makes the tests fail even if the value equality should the true
    @required KtSet<Tag> tagsFound,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Failure> failureOption,
  }) = _TagSearchFormState;

  factory TagSearchFormState.initial() => TagSearchFormState(
        tagsSelected: {},
        tagsFound: KtSet.empty(),
        isSubmitting: false,
        showErrorMessages: false,
        failureOption: none(),
      );
}
