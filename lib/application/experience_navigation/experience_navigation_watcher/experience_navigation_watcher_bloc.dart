import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/experience_management/use_case/get_experience.dart';

import '../../../injection.dart';

part 'experience_navigation_watcher_bloc.freezed.dart';
part 'experience_navigation_watcher_event.dart';
part 'experience_navigation_watcher_state.dart';

@injectable
class ExperienceNavigationWatcherBloc
    extends Bloc<ExperienceNavigationWatcherEvent, ExperienceNavigationWatcherState> {
  ExperienceNavigationWatcherBloc() : super(const ExperienceNavigationWatcherState.initial());

  @override
  Stream<ExperienceNavigationWatcherState> mapEventToState(
      ExperienceNavigationWatcherEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      allObjectivesAccomplished: _onAllObjectivesAccomplished,
    );
  }

  Stream<ExperienceNavigationWatcherState> _onAllObjectivesAccomplished(
      _AllObjectivesAccomplished event) async* {
    yield ExperienceNavigationWatcherState.finishExperience(
      event.experience,
    );
  }

  Stream<ExperienceNavigationWatcherState> _onInitialized(_Initialized event) async* {
    yield* event.experienceOption.fold(
      () async* {
        yield const ExperienceNavigationWatcherState.noExperience();
      },
      (experience) async* {
        final _failureOrUnit = await getIt<GetExperience>()(
          Params(id: experience.id),
        );
        yield _failureOrUnit.fold(
          (_) => const ExperienceNavigationWatcherState.noExperience(),
          (experience) => ExperienceNavigationWatcherState.navigatingExperience(
            experience,
          ),
        );
      },
    );
  }
}
