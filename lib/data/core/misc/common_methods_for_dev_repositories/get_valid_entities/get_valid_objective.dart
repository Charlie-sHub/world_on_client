import 'dart:io';

import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';

Objective getValidObjective() {
  return Objective(
    id: 1,
    description: EntityDescription("Sed tristique est nibh, ut imperdiet ligula dapibus accumsan."),
    coordinates: getValidCoordinates(),
    imageURL: "testObjective.jpg",
    imageFile: File(""),
  );
}
