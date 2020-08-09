import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/collection.dart';
import 'package:worldon/application/experience_management/objectives_creation/objectives_creation_bloc.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_objective.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
    },
  );
  final _objective = getValidObjective();
  // TODO: Use loops for these kind of tests
  // This is an ugly mess
  final _objective2 = _objective.copyWith(id: 2);
  final _objective3 = _objective.copyWith(id: 3);
  final _objective4 = _objective.copyWith(id: 4);
  final _objective5 = _objective.copyWith(id: 5);
  final _objective6 = _objective.copyWith(id: 6);
  final _objective7 = _objective.copyWith(id: 7);
  final _objective8 = _objective.copyWith(id: 8);
  final _objective9 = _objective.copyWith(id: 9);
  final _objective10 = _objective.copyWith(id: 10);
  final _objective11 = _objective.copyWith(id: 11);
  final _objectiveSet = KtSet.of(_objective);
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ObjectivesCreationBloc>(),
    expect: [],
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the added objective",
    build: () => getIt<ObjectivesCreationBloc>(),
    act: (bloc) async => bloc.add(ObjectivesCreationEvent.addedObjective(_objective)),
    expect: [ObjectivesCreationState.initial().copyWith(objectivesCreated: _objectiveSet)],
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the added and then removed objective",
    build: () => getIt<ObjectivesCreationBloc>(),
    act: (bloc) async {
      bloc.add(ObjectivesCreationEvent.addedObjective(_objective));
      bloc.add(ObjectivesCreationEvent.removedObjective(_objective));
    },
    expect: [
      ObjectivesCreationState.initial().copyWith(objectivesCreated: _objectiveSet),
      ObjectivesCreationState.initial(),
    ],
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the added objectives until it reaches 10 objectives",
    build: () => getIt<ObjectivesCreationBloc>(),
    act: (bloc) async {
      bloc.add(ObjectivesCreationEvent.addedObjective(_objective));
      bloc.add(ObjectivesCreationEvent.addedObjective(_objective2));
      bloc.add(ObjectivesCreationEvent.addedObjective(_objective3));
      bloc.add(ObjectivesCreationEvent.addedObjective(_objective4));
      bloc.add(ObjectivesCreationEvent.addedObjective(_objective5));
      bloc.add(ObjectivesCreationEvent.addedObjective(_objective6));
      bloc.add(ObjectivesCreationEvent.addedObjective(_objective7));
      bloc.add(ObjectivesCreationEvent.addedObjective(_objective8));
      bloc.add(ObjectivesCreationEvent.addedObjective(_objective9));
      bloc.add(ObjectivesCreationEvent.addedObjective(_objective10));
      bloc.add(ObjectivesCreationEvent.addedObjective(_objective11));
    },
    expect: [
      ObjectivesCreationState.initial().copyWith(objectivesCreated: _objectiveSet),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtSet.of(
          _objective,
          _objective2,
        ),
      ),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtSet.of(
          _objective,
          _objective2,
          _objective3,
        ),
      ),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtSet.of(
          _objective,
          _objective2,
          _objective3,
          _objective4,
        ),
      ),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtSet.of(
          _objective,
          _objective2,
          _objective3,
          _objective4,
          _objective5,
        ),
      ),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtSet.of(
          _objective,
          _objective2,
          _objective3,
          _objective4,
          _objective5,
          _objective6,
        ),
      ),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtSet.of(
          _objective,
          _objective2,
          _objective3,
          _objective4,
          _objective5,
          _objective6,
          _objective7,
        ),
      ),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtSet.of(
          _objective,
          _objective2,
          _objective3,
          _objective4,
          _objective5,
          _objective6,
          _objective7,
          _objective8,
        ),
      ),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtSet.of(
          _objective,
          _objective2,
          _objective3,
          _objective4,
          _objective5,
          _objective6,
          _objective7,
          _objective8,
          _objective9,
        ),
      ),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtSet.of(
          _objective,
          _objective2,
          _objective3,
          _objective4,
          _objective5,
          _objective6,
          _objective7,
          _objective8,
          _objective9,
          _objective10,
        ),
      ),
    ],
  );
}
