import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

class MoorExperienceWithRelations {
  final MoorExperience experience;
  final MoorUser creator;
  final List<String> imageUrls;
  final List<MoorObjective> objectives;
  final List<MoorReward> rewards;
  final List<MoorTag> tags;

  MoorExperienceWithRelations({
    @required this.experience,
    @required this.creator,
    @required this.imageUrls,
    @required this.objectives,
    @required this.rewards,
    @required this.tags,
  });
}
