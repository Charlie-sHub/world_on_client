import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_tags_dao.g.dart';

@UseDao(tables: [MoorTags])
class MoorTagsDao extends DatabaseAccessor<Database> with _$MoorTagsDaoMixin {
  MoorTagsDao(Database db) : super(db);

  // TODO: implement get tag by id

  Stream<List<MoorTag>> watchUserInterests(MoorUser user) {
    // TODO: Implement this method
    return null;
  }

  Stream<List<MoorTag>> watchSearchTagsByName(String name) {
    // TODO: Implement this method
    return null;
  }
}
