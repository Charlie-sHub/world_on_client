import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_coordinates.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';

Objective getValidObjective() {
  return Objective(
    description: EntityDescription("Sed tristique est nibh, ut imperdiet ligula dapibus accumsan."),
    coordinates: getValidCoordinates(),
    imageName: "testObjective.jpg",
  );
}
