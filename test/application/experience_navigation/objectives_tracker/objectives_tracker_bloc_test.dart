import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:worldon/application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_objective.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
    },
  );
  final firstObjective = getValidObjective();
  final secondObjective = firstObjective.copyWith(id: 2);
  final objectiveSet = ObjectiveSet(
    KtSet.of(
      firstObjective,
      secondObjective,
    ),
  );
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ObjectivesTrackerBloc>(),
    expect: [],
  );
  blocTest(
    "Should Initialize with a map of Objectives and false bool values",
    build: () => getIt<ObjectivesTrackerBloc>(),
    act: (bloc) async => bloc.add(ObjectivesTrackerEvent.initialized(objectiveSet)),
    expect: [
      ObjectivesTrackerState.initial().copyWith(
        objectiveTracker: {
          firstObjective: false,
          secondObjective: false,
        },
      ),
    ],
  );
  group(
    "Testing on accomplishment",
    () {
      blocTest(
        "Should update the map with the accomplishment of the first objective",
        build: () => getIt<ObjectivesTrackerBloc>(),
        act: (bloc) async {
          bloc.add(ObjectivesTrackerEvent.initialized(objectiveSet));
          bloc.add(ObjectivesTrackerEvent.objectiveAccomplished(firstObjective));
        },
        expect: [
          ObjectivesTrackerState.initial().copyWith(
            objectiveTracker: {
              firstObjective: true,
              secondObjective: false,
            },
          ),
        ],
      );
      blocTest(
        "Should update the map with the accomplishment of the second objective",
        build: () => getIt<ObjectivesTrackerBloc>(),
        act: (bloc) async {
          bloc.add(ObjectivesTrackerEvent.initialized(objectiveSet));
          bloc.add(ObjectivesTrackerEvent.objectiveAccomplished(secondObjective));
        },
        expect: [
          ObjectivesTrackerState.initial().copyWith(
            objectiveTracker: {
              firstObjective: false,
              secondObjective: true,
            },
          ),
        ],
      );
      blocTest(
        "Should update the map with the accomplishment of an objective",
        build: () => getIt<ObjectivesTrackerBloc>(),
        act: (bloc) async {
          bloc.add(ObjectivesTrackerEvent.initialized(objectiveSet));
          bloc.add(ObjectivesTrackerEvent.objectiveAccomplished(firstObjective));
          bloc.add(ObjectivesTrackerEvent.objectiveAccomplished(secondObjective));
        },
        expect: [
          ObjectivesTrackerState.initial().copyWith(
            objectiveTracker: {
              firstObjective: true,
              secondObjective: true,
            },
          ),
          ObjectivesTrackerState.initial().copyWith(
            objectiveTracker: {
              firstObjective: true,
              secondObjective: true,
            },
            isFinished: true,
          ),
        ],
      );
    },
  );
}
