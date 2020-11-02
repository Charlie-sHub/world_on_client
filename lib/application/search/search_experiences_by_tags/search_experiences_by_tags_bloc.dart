import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
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
class SearchExperiencesByTagsBloc extends Bloc<SearchExperiencesByTagsEvent, SearchExperiencesByTagsState> {
  SearchExperiencesByTagsBloc() : super(const SearchExperiencesByTagsState.initial());
  StreamSubscription<Either<Failure, KtList<Experience>>> _experiencesStreamSubscription;

  @override
  Stream<SearchExperiencesByTagsState> mapEventToState(SearchExperiencesByTagsEvent event) async* {
    yield* event.map(
      submitted: _onSubmitted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<SearchExperiencesByTagsState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrExperiences.fold(
      (failure) => SearchExperiencesByTagsState.searchFailure(failure),
      (experiencesFound) => SearchExperiencesByTagsState.searchSuccess(experiencesFound),
    );
  }

  Stream<SearchExperiencesByTagsState> _onSubmitted(_Submitted event) async* {
    yield const SearchExperiencesByTagsState.searchInProgress();
    await _experiencesStreamSubscription?.cancel();
    final _tagSet = TagSet(KtSet.from(event.tags));
    if (_tagSet.isValid()) {
      _experiencesStreamSubscription = getIt<WatchSearchExperiencesByTags>()(
        Params(tags: _tagSet),
      ).listen(
        (_failureOrExperiences) => add(SearchExperiencesByTagsEvent.resultsReceived(_failureOrExperiences)),
      );
    } else {
      final _valueFailure = _tagSet.failureOrCrash();
      yield SearchExperiencesByTagsState.valueFailure(_valueFailure);
    }
  }

  @override
  Future<void> close() async {
    await _experiencesStreamSubscription?.cancel();
    return super.close();
  }
}
