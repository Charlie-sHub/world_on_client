import 'package:worldon/data/core/moor/daos/moor_tags_dao/moor_tag_with_moor_user.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

class MoorExperienceWithRelations {
  final MoorExperience experience;
  final MoorUser creator;
  final List<String> imageUrls;
  final List<MoorObjective> objectives;
  final List<MoorReward> rewards;
  final List<MoorTagWithMoorUser> tags;

  MoorExperienceWithRelations(
    this.experience,
    this.creator,
    this.imageUrls,
    this.objectives,
    this.rewards,
    this.tags,
  );
}
