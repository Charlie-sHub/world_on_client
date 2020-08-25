import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import '../../tables/moor_options.dart';

part 'moor_options_dao.g.dart';

@UseDao(tables: [MoorOptions])
class MoorOptionsDao extends DatabaseAccessor<Database> with _$MoorOptionsDaoMixin {
  MoorOptionsDao(Database db) : super(db);

  Future insertOptions(Insertable<MoorOption> options) => into(moorOptions).insert(options);

  Future<MoorOption> selectOptionsById(int id) async {
    final _contentQuery = select(moorOptions)..where((_options) => _options.id.equals(id));
    return _contentQuery.getSingle();
  }

  Future<int> deleteAllOptions() => delete(moorOptions).go();

  Future<MoorOption> getUserOptions(int userId) async {
    final _userQuery = select(moorOptions)
      ..where((options) => options.userId.equals(userId))
      ..limit(1);
    return _userQuery.getSingle();
  }
}
