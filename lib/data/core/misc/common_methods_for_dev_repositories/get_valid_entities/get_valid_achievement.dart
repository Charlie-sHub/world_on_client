import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

import 'get_valid_tag.dart';
import 'get_valid_user.dart';

Achievement getValidAchievement() {
  return Achievement(
    id: UniqueId(),
    name: Name("The Hardest"),
    description: EntityDescription("You're the hardest"),
    imageURL: "testAchievement.jpg",
    imageFile: none(),
    type: "Meta achievement",
    requisite: 1,
    experiencePoints: ExperiencePoints(100),
    creatorId: getValidUser().id,
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 100))),
    modificationDate: PastDate(DateTime.now()),
    tags: TagSet(KtSet.of(getValidTag())),
  );
}
