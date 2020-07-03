import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/experience_log/use_case/load_user_log.dart';
import 'package:worldon/injection.dart';

part 'experience_log_watcher_bloc.freezed.dart';

part 'experience_log_watcher_event.dart';

part 'experience_log_watcher_state.dart';

@injectable
class ExperienceLogWatcherBloc extends Bloc<ExperienceLogWatcherEvent, ExperienceLogWatcherState> {
  ExperienceLogWatcherBloc() : super(const ExperienceLogWatcherState.initial());

  @override
  Stream<ExperienceLogWatcherState> mapEventToState(ExperienceLogWatcherEvent event) async* {
    yield* event.map(
      loadExperiences: onLoadExperiences,
    );
  }

  Stream<ExperienceLogWatcherState> onLoadExperiences(_LoadExperiences event) async* {
    yield const ExperienceLogWatcherState.loading();
    final _loadUserLog = getIt<LoadUserLog>();
    yield* _loadUserLog(getIt<NoParams>()).map(
      (failureOrExperiences) => failureOrExperiences.fold(
        (failure) => ExperienceLogWatcherState.loadFailure(failure),
        (experiences) => ExperienceLogWatcherState.loadSuccess(experiences),
      ),
    );
  }
}
