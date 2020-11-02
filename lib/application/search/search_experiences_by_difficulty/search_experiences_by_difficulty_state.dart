part of 'search_experiences_by_difficulty_bloc.dart';

@freezed
abstract class SearchExperiencesByDifficultyState with _$SearchExperiencesByDifficultyState {
  const factory SearchExperiencesByDifficultyState.initial() = _Initial;

  const factory SearchExperiencesByDifficultyState.searchInProgress() = _SearchInProgress;

  const factory SearchExperiencesByDifficultyState.searchSuccess(KtList<Experience> experiencesFound) = _SearchSuccess;

  const factory SearchExperiencesByDifficultyState.searchFailure(Failure<dynamic> failure) = _SearchFailure;

  const factory SearchExperiencesByDifficultyState.valueFailure(ValueFailure<int> failure) = _ValueFailure;
}
