import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_navigation/use_case/watch_recommended_experiences.dart';
import 'package:worldon/injection.dart';

part 'recommended_experiences_watcher_bloc.freezed.dart';
part 'recommended_experiences_watcher_event.dart';
part 'recommended_experiences_watcher_state.dart';

@injectable
class RecommendedExperiencesWatcherBloc extends Bloc<
    RecommendedExperiencesWatcherEvent, RecommendedExperiencesWatcherState> {
  RecommendedExperiencesWatcherBloc()
      : super(const RecommendedExperiencesWatcherState.initial()) {
    on<_WatchRecommendedExperiencesStarted>(
      _onWatchRecommendedExperiencesStarted,
    );
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Experience>>>?
      _recommendedExperiencesStreamSubscription;

  void _onResultsReceived(_ResultsReceived event, Emitter emit) {
    emit(
      event.failureOrExperiences.fold(
        (failure) => RecommendedExperiencesWatcherState.loadFailure(
          failure,
        ),
        (experiences) => RecommendedExperiencesWatcherState.loadSuccess(
          experiences,
        ),
      ),
    );
  }

  FutureOr<void> _onWatchRecommendedExperiencesStarted(_, Emitter emit) async {
    emit(const RecommendedExperiencesWatcherState.loadInProgress());
    await _recommendedExperiencesStreamSubscription?.cancel();
    _recommendedExperiencesStreamSubscription =
        getIt<WatchRecommendedExperiences>()(getIt<NoParams>()).listen(
      (_failureOrExperiences) => add(
        RecommendedExperiencesWatcherEvent.resultsReceived(
          _failureOrExperiences,
        ),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _recommendedExperiencesStreamSubscription?.cancel();
    return super.close();
  }
}
