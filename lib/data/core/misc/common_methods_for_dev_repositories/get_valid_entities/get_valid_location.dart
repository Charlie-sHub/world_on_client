import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/domain/core/entities/location/location.dart';

Location getValidLocation() {
  return Location(
    // Picked a place at random from google earth
    city: "Necochea",
    country: "Argentina",
    postalCode: "7630",
    experiences: {getValidExperience()},
  );
}
