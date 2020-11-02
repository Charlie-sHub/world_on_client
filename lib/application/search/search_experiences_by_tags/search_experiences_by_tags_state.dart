part of 'search_experiences_by_tags_bloc.dart';

@freezed
abstract class SearchExperiencesByTagsState with _$SearchExperiencesByTagsState {
  const factory SearchExperiencesByTagsState.initial() = _Initial;

  const factory SearchExperiencesByTagsState.searchInProgress() = _SearchInProgress;

  const factory SearchExperiencesByTagsState.searchSuccess(KtList<Experience> experiencesFound) = _SearchSuccess;

  const factory SearchExperiencesByTagsState.searchFailure(Failure<dynamic> failure) = _SearchFailure;

  const factory SearchExperiencesByTagsState.valueFailure(ValueFailure<KtSet<Tag>> failure) = _ValueFailure;
}
