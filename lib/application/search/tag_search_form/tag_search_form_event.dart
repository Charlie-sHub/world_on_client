part of 'tag_search_form_bloc.dart';

@freezed
abstract class TagSearchFormEvent with _$TagSearchFormEvent {
  const factory TagSearchFormEvent.submittedSearchTerm(String searchTermString) = _SubmittedSearchTerm;

  // Added from the Tag card of the search results
  const factory TagSearchFormEvent.addedTag(Tag tag) = _AddedTag;

  // Added from the Tag card of the current list of Tags
  const factory TagSearchFormEvent.subtractedTag(Tag tag) = _SubtractedTag;
}
