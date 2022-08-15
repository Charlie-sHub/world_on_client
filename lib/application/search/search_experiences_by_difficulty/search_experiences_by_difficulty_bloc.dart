import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
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
class SearchExperiencesByDifficultyBloc extends Bloc<
    SearchExperiencesByDifficultyEvent, SearchExperiencesByDifficultyState> {
  SearchExperiencesByDifficultyBloc()
      : super(const SearchExperiencesByDifficultyState.initial()) {
    on<_Submitted>(_onSubmitted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Experience>>>?
      _experiencesStreamSubscription;

  void _onResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrExperiences.fold(
        (failure) => SearchExperiencesByDifficultyState.searchFailure(failure),
        (experiencesFound) =>
            SearchExperiencesByDifficultyState.searchSuccess(experiencesFound),
      ),
    );
  }

  FutureOr<void> _onSubmitted(_Submitted event, Emitter emit) async {
    emit(const SearchExperiencesByDifficultyState.searchInProgress());
    await _experiencesStreamSubscription?.cancel();
    final difficulty = Difficulty(event.difficulty);
    if (difficulty.isValid()) {
      _experiencesStreamSubscription =
          getIt<WatchSearchExperiencesByDifficulty>()(
        Params(difficulty: difficulty),
      ).listen(
        (failureOrExperiences) => add(
          SearchExperiencesByDifficultyEvent.resultsReceived(
            failureOrExperiences,
          ),
        ),
      );
    } else {
      final failure = difficulty.failureOrCrash();
      emit(SearchExperiencesByDifficultyState.valueFailure(failure));
    }
  }

  @override
  Future<void> close() async {
    await _experiencesStreamSubscription?.cancel();
    return super.close();
  }
}
