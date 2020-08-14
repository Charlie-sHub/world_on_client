import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_comments_dao.g.dart';

@UseDao(tables: [MoorComments])
class MoorCommentsDao extends DatabaseAccessor<Database> with _$MoorCommentsDaoMixin {
  MoorCommentsDao(Database db) : super(db);

  Stream<List<MoorComment>> watchExperienceComments(MoorExperience experience) {
    // TODO: Implement this method
    return null;
  }
}
