part of 'search_experiences_by_difficulty_bloc.dart';

@freezed
class SearchExperiencesByDifficultyEvent with _$SearchExperiencesByDifficultyEvent {
  const factory SearchExperiencesByDifficultyEvent.submitted(int difficulty) = _Submitted;

  const factory SearchExperiencesByDifficultyEvent.resultsReceived(Either<Failure, KtList<Experience>> failureOrExperiences) = _ResultsReceived;
}
