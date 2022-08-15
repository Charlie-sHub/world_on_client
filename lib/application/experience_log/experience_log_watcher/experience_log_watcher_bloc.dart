import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_log/use_case/watch_user_log.dart';
import 'package:worldon/injection.dart';

part 'experience_log_watcher_bloc.freezed.dart';
part 'experience_log_watcher_event.dart';
part 'experience_log_watcher_state.dart';

@injectable
class ExperienceLogWatcherBloc
    extends Bloc<ExperienceLogWatcherEvent, ExperienceLogWatcherState> {
  ExperienceLogWatcherBloc()
      : super(const ExperienceLogWatcherState.initial()) {
    on<_WatchExperiencesLogStarted>(_onWatchExperiencesLogStarted);
    on<_ResultsReceived>(_onResultsReceived);
  }

  StreamSubscription<Either<Failure, KtList<Experience>>>?
      _experienceLogStreamSubscription;

  FutureOr<void> _onResultsReceived(
    _ResultsReceived event,
    Emitter emit,
  ) async {
    emit(
      event.failureOrExperiences.fold(
        (failure) => ExperienceLogWatcherState.loadFailure(failure),
        (experiences) => ExperienceLogWatcherState.loadSuccess(experiences),
      ),
    );
  }

  void _onWatchExperiencesLogStarted(_, Emitter emit) {
    emit(const ExperienceLogWatcherState.loadInProgress());
    _experienceLogStreamSubscription?.cancel();
    _experienceLogStreamSubscription =
        getIt<WatchUserLog>()(getIt<NoParams>()).listen(
      (failureOrExperiences) =>
          add(ExperienceLogWatcherEvent.resultsReceived(failureOrExperiences)),
    );
  }

  @override
  Future<void> close() async {
    await _experienceLogStreamSubscription?.cancel();
    return super.close();
  }
}
