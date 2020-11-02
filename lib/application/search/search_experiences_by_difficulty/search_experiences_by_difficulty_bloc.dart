import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/search/use_case/watch_search_experiences_by_difficulty.dart';
import 'package:worldon/injection.dart';

part 'search_experiences_by_difficulty_bloc.freezed.dart';
part 'search_experiences_by_difficulty_event.dart';
part 'search_experiences_by_difficulty_state.dart';

@injectable
class SearchExperiencesByDifficultyBloc extends Bloc<SearchExperiencesByDifficultyEvent, SearchExperiencesByDifficultyState> {
  SearchExperiencesByDifficultyBloc() : super(const SearchExperiencesByDifficultyState.initial());
  StreamSubscription<Either<Failure, KtList<Experience>>> _experiencesStreamSubscription;

  @override
  Stream<SearchExperiencesByDifficultyState> mapEventToState(SearchExperiencesByDifficultyEvent event) async* {
    yield* event.map(
      submitted: _onSubmitted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<SearchExperiencesByDifficultyState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrExperiences.fold(
      (failure) => SearchExperiencesByDifficultyState.searchFailure(failure),
      (experiencesFound) => SearchExperiencesByDifficultyState.searchSuccess(experiencesFound),
    );
  }

  Stream<SearchExperiencesByDifficultyState> _onSubmitted(_Submitted event) async* {
    yield const SearchExperiencesByDifficultyState.searchInProgress();
    await _experiencesStreamSubscription?.cancel();
    final _difficulty = Difficulty(event.difficulty);
    if (_difficulty.isValid()) {
      _experiencesStreamSubscription = getIt<WatchSearchExperiencesByDifficulty>()(
        Params(difficulty: _difficulty),
      ).listen(
        (_failureOrExperiences) => add(SearchExperiencesByDifficultyEvent.resultsReceived(_failureOrExperiences)),
      );
    } else {
      final _failure = _difficulty.failureOrCrash();
      yield SearchExperiencesByDifficultyState.valueFailure(_failure);
    }
  }

  @override
  Future<void> close() async {
    await _experiencesStreamSubscription?.cancel();
    return super.close();
  }
}
