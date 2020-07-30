import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/experience_management/use_case/create_objectives.dart';
import 'package:worldon/injection.dart';

void main() {
  CreateObjectives useCase;
  setUpAll(
      () {
      configureDependencies(injectable.Environment.test);
      useCase = CreateObjectives();
    },
  );
  final _entityDescription = EntityDescription("Test");
  final _coordinates = Coordinates(
    latitude: Latitude(0.0),
    longitude: Longitude(0.0),
  );
  const _imageURL = "test.jpg";
  final _imageFile = File("assets/experience_placeholder_image");
  final objective = Objective(
    description: _entityDescription,
    coordinates: _coordinates,
    imageURL: _imageURL,
    imageFile: _imageFile,
  );
  final objectives = KtSet.of(
    objective,
    objective,
  );
  final objectiveSet = ObjectiveSet(objectives);
  final params = Params(
    description: _entityDescription,
    coordinates: _coordinates,
    imageURL: _imageURL,
    imageFile: _imageFile,
  );
  test(
    "Should return a Set equivalent to objectives",
      () async {
      // Act
      var result = _act(useCase, params);
      result = _act(useCase, params);
      // Assert
      expect(result, objectiveSet);
    },
  );
}

Object _act(CreateObjectives useCase, Params params) {
  final either = useCase(params);
  final result = either.fold((failure) => failure, id);
  return result;
}
