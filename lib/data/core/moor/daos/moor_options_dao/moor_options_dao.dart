import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_options_dao.g.dart';

@UseDao(tables: [MoorOptions])
class MoorOptionsDao extends DatabaseAccessor<Database> with _$MoorOptionsDaoMixin {
  MoorOptionsDao(Database db) : super(db);

  Future insertOptions(Insertable<MoorOption> options) => into(moorOptions).insert(options);

  Future<MoorOption> getUserOptions(int userId) async {
    final _userQuery = select(moorOptions)
      ..where((options) => options.userId.equals(userId))
      ..limit(1)
      ..get();
    return _userQuery.getSingle();
  }
}
