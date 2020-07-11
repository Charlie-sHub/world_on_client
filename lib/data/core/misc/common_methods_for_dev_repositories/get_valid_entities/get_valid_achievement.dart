import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';

import 'get_valid_tag.dart';
import 'get_valid_user.dart';

Achievement getValidAchievement() {
  return Achievement(
    id: 1,
    name: Name("Cras scelerisque"),
    description: EntityDescription("Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Fusce vel mauris et sapien finibus congue."),
    imageURL: "testAchievement.jpg",
    type: "Meta achievement",
    requisite: 1,
    experiencePoints: ExperiencePoints(100),
    creator: getValidUser(),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 100))),
    modificationDate: PastDate(DateTime.now()),
    tags: TagSet(KtSet.of(getValidTag())),
  );
}
