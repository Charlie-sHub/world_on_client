import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/collection.dart';
import 'package:worldon/application/experience_management/objectives_creation/objectives_creation_bloc.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_objective.dart';
import 'package:worldon/domain/core/validation/objects/objective_list.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
    },
  );
  final _objective = getValidObjective();
  // TODO: Use loops for these kind of tests if possible
  // This is ugly af
  final _objective2 = _objective.copyWith(id: UniqueId());
  final _objective3 = _objective.copyWith(id: UniqueId());
  final _objective4 = _objective.copyWith(id: UniqueId());
  final _objective5 = _objective.copyWith(id: UniqueId());
  final _objective6 = _objective.copyWith(id: UniqueId());
  final _objective7 = _objective.copyWith(id: UniqueId());
  final _objective8 = _objective.copyWith(id: UniqueId());
  final _objective9 = _objective.copyWith(id: UniqueId());
  final _objective10 = _objective.copyWith(id: UniqueId());
  final _objective11 = _objective.copyWith(id: UniqueId());
  final _objectiveList = KtList.of(_objective);
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<ObjectivesCreationBloc>(),
    expect: [],
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the added objective",
    build: () => getIt<ObjectivesCreationBloc>(),
    act: (bloc) async => bloc.add(ObjectivesCreationEvent.addedObjective(_objective)),
    expect: [ObjectivesCreationState.initial().copyWith(objectivesCreated: _objectiveList)],
  );
  blocTest(
    "${TestDescription.shouldEmitUpdated} with the added and then removed objective",
    build: () => getIt<ObjectivesCreationBloc>(),
    act: (bloc) async {
      bloc.add(ObjectivesCreationEvent.addedObjective(_objective));
      bloc.add(ObjectivesCreationEvent.removedObjective(_objective));
    },
    expect: [
      ObjectivesCreationState.initial().copyWith(objectivesCreated: _objectiveList),
      ObjectivesCreationState.initial(),
    ],
  );
  blocTest(
    "${"${TestDescription.shouldEmitUpdated} with the added rewards until it reaches "}${ObjectiveList.maxLength}",
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
      ObjectivesCreationState.initial().copyWith(objectivesCreated: _objectiveList),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtList.of(
          _objective,
          _objective2,
        ),
      ),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtList.of(
          _objective,
          _objective2,
          _objective3,
        ),
      ),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtList.of(
          _objective,
          _objective2,
          _objective3,
          _objective4,
        ),
      ),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtList.of(
          _objective,
          _objective2,
          _objective3,
          _objective4,
          _objective5,
        ),
      ),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtList.of(
          _objective,
          _objective2,
          _objective3,
          _objective4,
          _objective5,
          _objective6,
        ),
      ),
      ObjectivesCreationState.initial().copyWith(
        objectivesCreated: KtList.of(
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
        objectivesCreated: KtList.of(
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
        objectivesCreated: KtList.of(
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
        objectivesCreated: KtList.of(
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
