part of 'search_experiences_by_difficulty_bloc.dart';

@freezed
abstract class SearchExperiencesByDifficultyEvent with _$SearchExperiencesByDifficultyEvent {
  const factory SearchExperiencesByDifficultyEvent.submitted(int difficulty) = _Submitted;
}
