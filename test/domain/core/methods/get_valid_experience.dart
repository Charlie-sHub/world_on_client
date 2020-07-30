import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/location/location.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

import 'get_valid_objective_set.dart';
import 'get_valid_reward_set.dart';
import 'get_valid_tag_set.dart';
import 'get_valid_user.dart';

Experience getValidExperience() {
  return Experience.empty().copyWith(
    title: Name("Test"),
    description: EntityDescription("For testing"),
    imageAssets: [
      Asset(
        "1",
        "assets/experience_placeholder_image.jpg",
        100,
        100,
      ),
    ],
    coordinates: Coordinates(
      latitude: Latitude(10),
      longitude: Longitude(10),
    ),
    location: Location.empty(),
    creator: getValidUser(),
    difficulty: Difficulty(9),
    objectives: getValidObjectiveSet(),
    rewards: getValidRewardSet(),
    tags: getValidTagSet(),
  );
}
