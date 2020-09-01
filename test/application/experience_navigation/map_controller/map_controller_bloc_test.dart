import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:worldon/application/experience_navigation/map_controller/map_controller_bloc.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/injection.dart';

import '../../../domain/core/methods/get_valid_experience.dart';
import '../../../test_descriptions.dart';

void main() {
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
    },
  );
  final _experience = getValidExperience();
  const _zoom = 10.0;
  final _objectiveList = _experience.objectives.getOrCrash().toList();
  blocTest(
    TestDescription.shouldEmitInitial,
    build: () => getIt<MapControllerBloc>(),
    expect: [],
  );
  blocTest(
    "Should Initialize with the coordinates and objectives of a given experience",
    build: () => getIt<MapControllerBloc>(),
    act: (bloc) async => bloc.add(MapControllerEvent.initialized(_experience)),
    expect: [
      MapControllerState.initial().copyWith(
        coordinates: _experience.coordinates,
        objectives: _objectiveList,
      ),
    ],
  );
  blocTest(
    "Should change the coordinates",
    build: () => getIt<MapControllerBloc>(),
    act: (bloc) async {
      bloc.add(MapControllerEvent.initialized(_experience));
      bloc.add(
        MapControllerEvent.cameraPositionChanged(
          coordinates: Coordinates.empty(),
          zoom: _zoom,
        ),
      );
    },
    expect: [
      MapControllerState.initial().copyWith(
        coordinates: _experience.coordinates,
        objectives: _objectiveList,
      ),
      MapControllerState.initial().copyWith(
        coordinates: Coordinates.empty(),
        zoom: _zoom,
        objectives: _objectiveList,
      ),
    ],
  );
  blocTest(
    "Should change the objectives",
    build: () => getIt<MapControllerBloc>(),
    act: (bloc) async {
      bloc.add(MapControllerEvent.initialized(_experience));
      bloc.add(MapControllerEvent.objectivesChanged(KtList.empty()));
    },
    expect: [
      MapControllerState.initial().copyWith(
        coordinates: _experience.coordinates,
        objectives: _objectiveList,
      ),
      MapControllerState.initial().copyWith(
        coordinates: _experience.coordinates,
        objectives: KtList.empty(),
      ),
    ],
  );
}
