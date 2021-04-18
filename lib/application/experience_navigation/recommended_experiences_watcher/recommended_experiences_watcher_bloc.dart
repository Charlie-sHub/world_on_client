import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/use_case/watch_recommended_experiences.dart';

import '../../../injection.dart';

part 'recommended_experiences_watcher_bloc.freezed.dart';
part 'recommended_experiences_watcher_event.dart';
part 'recommended_experiences_watcher_state.dart';

@injectable
class RecommendedExperiencesWatcherBloc extends Bloc<RecommendedExperiencesWatcherEvent, RecommendedExperiencesWatcherState> {
  RecommendedExperiencesWatcherBloc() : super(const RecommendedExperiencesWatcherState.initial());

  StreamSubscription<Either<Failure, KtList<Experience>>>? _recommendedExperiencesStreamSubscription;

  @override
  Stream<RecommendedExperiencesWatcherState> mapEventToState(RecommendedExperiencesWatcherEvent event) async* {
    yield* event.map(
      watchRecommendedExperiencesStarted: _onWatchRecommendedExperiencesStarted,
      resultsReceived: _onResultsReceived,
    );
  }

  Stream<RecommendedExperiencesWatcherState> _onResultsReceived(_ResultsReceived event) async* {
    yield event.failureOrExperiences.fold(
      (failure) => RecommendedExperiencesWatcherState.loadFailure(failure),
      (experiences) => RecommendedExperiencesWatcherState.loadSuccess(experiences),
    );
  }

  Stream<RecommendedExperiencesWatcherState> _onWatchRecommendedExperiencesStarted(_) async* {
    yield const RecommendedExperiencesWatcherState.loadInProgress();
    await _recommendedExperiencesStreamSubscription?.cancel();
    _recommendedExperiencesStreamSubscription = getIt<WatchRecommendedExperiences>()(getIt<NoParams>()).listen(
      (_failureOrExperiences) => add(RecommendedExperiencesWatcherEvent.resultsReceived(_failureOrExperiences)),
    );
  }

  @override
  Future<void> close() async {
    await _recommendedExperiencesStreamSubscription?.cancel();
    return super.close();
  }
}
