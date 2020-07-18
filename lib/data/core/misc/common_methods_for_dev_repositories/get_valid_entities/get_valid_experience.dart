import 'package:kt_dart/kt.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_comment.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_coordinates.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/objective_set.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/reward_set.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

import 'get_valid_location.dart';
import 'get_valid_objective.dart';
import 'get_valid_reward.dart';

Experience getValidExperience() {
  return Experience.empty().copyWith(
    id: 1,
    name: Name("Malesuada fames ac ante"),
    description: EntityDescription("Donec bibendum congue libero nec viverra. Cras eget placerat libero. Maecenas cursus turpis vitae ultricies tempus. In suscipit orci id dapibus molestie."),
    imageURLs: {"somePic.jpg"},
    coordinates: getValidCoordinates(),
    location: getValidLocation(),
    creator: getValidUser(),
    difficulty: Difficulty(2),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 100))),
    modificationDate: PastDate(DateTime.now()),
    objectives: ObjectiveSet(KtSet.of(getValidObjective())),
    rewards: RewardSet(KtSet.of(getValidReward())),
    tags: TagSet(KtSet.of(getValidTag())),
    comments: {getValidComment()},
    likedBy: {getValidUser()},
    doneBy: {getValidUser()},
  );
}
