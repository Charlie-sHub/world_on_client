import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:worldon/application/experience_navigation/experience_navigation_watcher/experience_navigation_watcher_bloc.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
    },
  );
  final experience = getValidExperience();
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ExperienceNavigationWatcherBloc>(),
    expect: [],
  );
  group(
    TestDescription.testingInitialization,
    () {
      blocTest(
        "Should emit navigatingExperience with experience",
        build: () => getIt<ExperienceNavigationWatcherBloc>(),
        act: (bloc) async => bloc.add(ExperienceNavigationWatcherEvent.initialized(some(experience))),
        expect: [ExperienceNavigationWatcherState.navigatingExperience(experience)],
      );
      blocTest(
        "Should emit noExperience",
        build: () => getIt<ExperienceNavigationWatcherBloc>(),
        act: (bloc) async => bloc.add(ExperienceNavigationWatcherEvent.initialized(none())),
        expect: [const ExperienceNavigationWatcherState.noExperience()],
      );
    },
  );
  blocTest(
    "Should emit finishExperience",
    build: () => getIt<ExperienceNavigationWatcherBloc>(),
    act: (bloc) async {
      bloc.add(ExperienceNavigationWatcherEvent.initialized(some(experience)));
      bloc.add(ExperienceNavigationWatcherEvent.allObjectivesAccomplished(experience));
    },
    expect: [
      ExperienceNavigationWatcherState.navigatingExperience(experience),
      ExperienceNavigationWatcherState.finishExperience(experience),
    ],
  );
}
