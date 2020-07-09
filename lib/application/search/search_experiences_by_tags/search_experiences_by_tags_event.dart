part of 'search_experiences_by_tags_bloc.dart';

@freezed
abstract class SearchExperiencesByTagsEvent with _$SearchExperiencesByTagsEvent {
  // This works with the assumption that somehow it will receive a set of tags
  // Probably the same way as the User picks its interests or Tags are added to an experience during creation
  // Since those use cases require the same functionality it makes sense to make it a common bloc
  const factory SearchExperiencesByTagsEvent.submitted(Set<Tag> tags) = _Submitted;
}
