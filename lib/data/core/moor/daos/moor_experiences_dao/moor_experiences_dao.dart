import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_experiences_dao.g.dart';

@UseDao(tables: [MoorExperiences])
class MoorExperiencesDao extends DatabaseAccessor<Database> with _$MoorExperiencesDaoMixin {
  MoorExperiencesDao(Database db) : super(db);

  Future createExperience(Insertable<MoorExperience> experience) => into(moorExperiences).insert(experience);

  // TODO: Select experience by id

  Future updateExperience(Insertable<MoorExperience> experience) => update(moorExperiences).replace(experience);

  Stream<List<MoorExperience>> watchFeed(MoorExperience experience) {
    // TODO: Implement this method
    return null;
  }

  Stream<List<MoorExperience>> watchExperiencesDone(MoorUser user) {
    // TODO: Implement this method
    return null;
  }

  Stream<List<MoorExperience>> watchExperiencesLiked(MoorUser user) {
    // TODO: Implement this method
    return null;
  }

  Stream<List<MoorExperience>> watchExperiencesCreated(MoorUser creator) {
    // TODO: Implement this method
    return null;
  }

  Stream<List<MoorExperience>> watchSearchExperiencesByName(String title) {
    // TODO: Implement this method
    return null;
  }
}
