part of 'search_experiences_by_tags_bloc.dart';

@freezed
class SearchExperiencesByTagsEvent with _$SearchExperiencesByTagsEvent {
  const factory SearchExperiencesByTagsEvent.submitted(Set<Tag> tags) = _Submitted;

  const factory SearchExperiencesByTagsEvent.resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) = _ResultsReceived;
}
