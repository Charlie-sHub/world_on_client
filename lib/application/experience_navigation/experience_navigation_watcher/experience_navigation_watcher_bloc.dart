import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';

part 'experience_navigation_watcher_bloc.freezed.dart';

part 'experience_navigation_watcher_event.dart';

part 'experience_navigation_watcher_state.dart';

@injectable
class ExperienceNavigationWatcherBloc extends Bloc<ExperienceNavigationWatcherEvent, ExperienceNavigationWatcherState> {
  ExperienceNavigationWatcherBloc() : super(const ExperienceNavigationWatcherState.initial());

  @override
  Stream<ExperienceNavigationWatcherState> mapEventToState(ExperienceNavigationWatcherEvent event) async* {
    yield* event.map(
      initialized: onInitialized,
      allObjectivesAccomplished: onAllObjectivesAccomplished,
    );
  }

  Stream<ExperienceNavigationWatcherState> onAllObjectivesAccomplished(_AllObjectivesAccomplished event) async* {
    yield ExperienceNavigationWatcherState.finishExperience(event.experience);
  }

  Stream<ExperienceNavigationWatcherState> onInitialized(_Initialized event) async* {
    yield event.experienceOption.fold(
      () => const ExperienceNavigationWatcherState.noExperience(),
      (experience) => ExperienceNavigationWatcherState.navigatingExperience(experience),
    );
  }
}
