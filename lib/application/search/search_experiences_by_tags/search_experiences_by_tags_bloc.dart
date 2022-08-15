import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/search/use_case/watch_search_experiences_by_tags.dart';
import 'package:worldon/injection.dart';

part 'search_experiences_by_tags_bloc.freezed.dart';
part 'search_experiences_by_tags_event.dart';
part 'search_experiences_by_tags_state.dart';

@injectable
class SearchExperiencesByTagsBloc
    extends Bloc<SearchExperiencesByTagsEvent, SearchExperiencesByTagsState> {
  SearchExperiencesByTagsBloc()
      : super(const SearchExperiencesByTagsState.initial()) {
    on<_Submitted>(_onSubmitted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Experience>>>?
      _experiencesStreamSubscription;

  void _onResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrExperiences.fold(
        (failure) => SearchExperiencesByTagsState.searchFailure(failure),
        (experiencesFound) =>
            SearchExperiencesByTagsState.searchSuccess(experiencesFound),
      ),
    );
  }

  FutureOr<void> _onSubmitted(_Submitted event, Emitter emit) async {
    emit(const SearchExperiencesByTagsState.searchInProgress());
    await _experiencesStreamSubscription?.cancel();
    final tagSet = TagSet(KtSet.from(event.tags));
    if (tagSet.isValid()) {
      _experiencesStreamSubscription = getIt<WatchSearchExperiencesByTags>()(
        Params(tags: tagSet),
      ).listen(
        (failureOrExperiences) => add(
          SearchExperiencesByTagsEvent.resultsReceived(failureOrExperiences),
        ),
      );
    } else {
      final valueFailure = tagSet.failureOrCrash();
      emit(SearchExperiencesByTagsState.valueFailure(valueFailure));
    }
  }

  @override
  Future<void> close() async {
    await _experiencesStreamSubscription?.cancel();
    return super.close();
  }
}
