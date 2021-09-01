import 'package:kt_dart/kt.dart';
import 'package:worldon/core/assets.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_comment.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_coordinates.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/entities/coordinates/coordinates.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/latitude.dart';
import 'package:worldon/domain/core/validation/objects/longitude.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_list.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

import 'get_valid_location.dart';
import 'get_valid_objective.dart';
import 'get_valid_reward.dart';

Experience getValidExperience() {
  return Experience.empty().copyWith(
    id: UniqueId(),
    title: Name("Malesuada fames ac ante"),
    description: EntityDescription(
        "Donec bibendum congue libero nec viverra. Cras eget placerat libero. Maecenas cursus turpis vitae ultricies tempus. In suscipit orci id dapibus molestie."),
    imageURLs: {
      Assets.experiencePlaceholder,
    },
    coordinates: getValidCoordinates(),
    location: getValidLocation(),
    creator: getValidUser().simplified,
    difficulty: Difficulty(2),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 100))),
    modificationDate: PastDate(DateTime.now()),
    objectives: ObjectiveList(
      KtList.of(
        getValidObjective(),
        getValidObjective().copyWith(
          id: UniqueId(),
          description: EntityDescription(
              "Poaching Whistler cruiser white room, carbon chowder dirtbag death cookies steeps."),
          coordinates: Coordinates(
            latitude: Latitude(40.428938),
            longitude: Longitude(-3.680765),
          ),
        ),
        getValidObjective().copyWith(
          id: UniqueId(),
          description: EntityDescription("Vaporware post-ironic listicle."),
          coordinates: Coordinates(
            latitude: Latitude(40.425292),
            longitude: Longitude(-3.706473),
          ),
        ),
        getValidObjective().copyWith(
          id: UniqueId(),
          description: EntityDescription("Yard sale poaching cork afterbang giblets stomp saddle."),
          coordinates: Coordinates(
            latitude: Latitude(40.412429),
            longitude: Longitude(-3.683762),
          ),
        ),
        getValidObjective().copyWith(
          id: UniqueId(),
          description: EntityDescription("""
Stoked wheelie cork jib roadie. Pow pow twin tip bomb hole north shore, spread eagle misty pow clipless wheelie.
Chillax gapers Whistler skid."""),
          coordinates: Coordinates(
            latitude: Latitude(40.386485),
            longitude: Longitude(-3.684008),
          ),
        ),
        getValidObjective().copyWith(
          id: UniqueId(),
          description: EntityDescription(
              "Disrupt selvage blue bottle whatever, synth craft beer messenger bag."),
          coordinates: Coordinates(
            latitude: Latitude(40.435630),
            longitude: Longitude(-3.644995),
          ),
        ),
      ),
    ),
    rewards: RewardSet(
      KtSet.of(
        getValidReward(),
        getValidReward().copyWith(
          id: UniqueId(),
          name: Name("Park rat"),
          description: EntityDescription("Pow pow rip flow piste line."),
        ),
        getValidReward().copyWith(
          id: UniqueId(),
          name: Name("Snackwave"),
          description: EntityDescription("Copper mug narwhal."),
        ),
      ),
    ),
    tags: TagSet(
      KtSet.of(
        getValidTag(),
        getValidTag().copyWith(
          id: UniqueId(),
          name: Name("Food"),
        ),
        getValidTag().copyWith(
          id: UniqueId(),
          name: Name("Outdoors"),
        ),
        getValidTag().copyWith(
          id: UniqueId(),
          name: Name("Fashion"),
        ),
      ),
    ),
    comments: {
      getValidComment(),
      getValidComment().copyWith(
        id: UniqueId(),
        content: CommentContent("Vinyl retro keytar biodiesel."),
      ),
      getValidComment().copyWith(
        id: UniqueId(),
        content: CommentContent(
            "Af paleo tacos, pinterest bespoke yuccie VHS messenger bag small batch."),
      ),
      getValidComment().copyWith(
        id: UniqueId(),
        content: CommentContent("Typewriter plaid fam squid yuccie cloud bread street art."),
      ),
    },
    likedBy: {UniqueId()},
    doneBy: {UniqueId()},
  );
}
