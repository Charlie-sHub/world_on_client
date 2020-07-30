import 'package:kt_dart/collection.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/location/location.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

import 'get_valid_coordinates.dart';
import 'get_valid_objective.dart';
import 'get_valid_reward.dart';

Location getValidLocation() {
  return Location(
    id: 2,
    // Picked a place at random from google earth
    city: "Necochea",
    country: "Argentina",
    postalCode: "7630",
    experiences: {
      Experience.empty().copyWith(
        id: 3,
        title: Name("Joyce neocapitalist"),
        description: EntityDescription("""
If the patriarchialist paradigm of narrative holds,
we have to choose between neocapitalist libertarianism and neodialectic capitalist theory.
But the main theme of the works of Joyce is the collapse, and some would say the futility, of subdialectic truth."""),
        creator: getValidUser(),
        location: Location.empty().copyWith(id: 1),
        coordinates: getValidCoordinates(),
        objectives: ObjectiveSet(KtSet.of(getValidObjective())),
        rewards: RewardSet(KtSet.of(getValidReward())),
        tags: TagSet(KtSet.of(getValidTag())),
      ),
    },
  );
}
