import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/domain/experience_management/use_case/create_objectives.dart';

void main() {
  CreateObjectives useCase;
  setUp(
    () {
      useCase = CreateObjectives();
    },
  );
  final _entityDescription = EntityDescription("Test");
  final _coordinates = Coordinates(
    latitude: Latitude(0.0),
    longitude: Longitude(0.0),
  );
  const _imageName = "test.jpg";
  final objective = Objective(
    description: _entityDescription,
    coordinates: _coordinates,
    imageName: _imageName,
  );
  final objectives = {
    objective,
    objective,
  };
  final params = Params(
    description: _entityDescription,
    coordinates: _coordinates,
    imageName: _imageName,
  );
  test(
    "Should return a Set equivalent to objectives",
    () async {
      // Act
      var result = _act(useCase, params);
      result = _act(useCase, params);
      // Assert
      expect(result, objectives);
    },
  );
}

Object _act(CreateObjectives useCase, Params params) {
  final either = useCase(params);
  final result = either.fold((failure) => failure, id);
  return result;
}
