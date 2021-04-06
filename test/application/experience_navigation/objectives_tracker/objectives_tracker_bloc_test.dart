import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:worldon/application/experience_navigation/objectives_tracker/objectives_tracker_bloc.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_objective.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
    },
  );
  final firstObjective = getValidObjective();
  final secondObjective = firstObjective.copyWith(id: UniqueId());
  final objectiveSet = ObjectiveList(
    KtList.of(
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
    "Should Initialize with a KtList with the objectives yet to complete",
    build: () => getIt<ObjectivesTrackerBloc>(),
    act: (bloc) async => bloc.add(ObjectivesTrackerEvent.initialized(objectiveSet)),
    expect: [
      ObjectivesTrackerState.initial().copyWith(
        objectivesToDo: KtList.of(
          firstObjective,
          secondObjective,
        ),
      ),
    ],
  );
  group(
    "Testing on accomplishment",
    () {
      blocTest(
        "Should update the KtList removing the firstObjective",
        build: () => getIt<ObjectivesTrackerBloc>(),
        act: (bloc) async {
          bloc.add(ObjectivesTrackerEvent.initialized(objectiveSet));
          bloc.add(ObjectivesTrackerEvent.objectiveAccomplished(firstObjective));
        },
        expect: [
          ObjectivesTrackerState.initial().copyWith(
            objectivesToDo: KtList.of(
              firstObjective,
              secondObjective,
            ),
          ),
          ObjectivesTrackerState.initial().copyWith(
            objectivesToDo: KtList.of(secondObjective),
          ),
        ],
      );
      blocTest(
        "Should update the KtList removing the secondObjective",
        build: () => getIt<ObjectivesTrackerBloc>(),
        act: (bloc) async {
          bloc.add(ObjectivesTrackerEvent.initialized(objectiveSet));
          bloc.add(ObjectivesTrackerEvent.objectiveAccomplished(secondObjective));
        },
        expect: [
          ObjectivesTrackerState.initial().copyWith(
            objectivesToDo: KtList.of(
              firstObjective,
              secondObjective,
            ),
          ),
          ObjectivesTrackerState.initial().copyWith(
            objectivesToDo: KtList.of(firstObjective),
          ),
        ],
      );
      blocTest(
        "Should update the KtList removing both objectives and isFinished to true",
        build: () => getIt<ObjectivesTrackerBloc>(),
        act: (bloc) async {
          bloc.add(ObjectivesTrackerEvent.initialized(objectiveSet));
          bloc.add(ObjectivesTrackerEvent.objectiveAccomplished(firstObjective));
          bloc.add(ObjectivesTrackerEvent.objectiveAccomplished(secondObjective));
        },
        expect: [
          ObjectivesTrackerState.initial().copyWith(
            objectivesToDo: KtList.of(
              firstObjective,
              secondObjective,
            ),
          ),
          ObjectivesTrackerState.initial().copyWith(
            objectivesToDo: KtList.of(secondObjective),
          ),
          ObjectivesTrackerState.initial().copyWith(
            isFinished: true,
          ),
        ],
      );
    },
  );
}
