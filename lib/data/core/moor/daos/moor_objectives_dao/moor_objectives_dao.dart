import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import '../../tables/moor_objectives.dart';

part 'moor_objectives_dao.g.dart';

@UseDao(tables: [MoorObjectives])
class MoorObjectivesDao extends DatabaseAccessor<Database> with _$MoorObjectivesDaoMixin {
  MoorObjectivesDao(Database db) : super(db);

  Future<int> insertObjective(Insertable<MoorObjective> objective) => into(moorObjectives).insert(objective);

  Future<MoorObjective> getObjectiveById(String id) async {
    final _contentQuery = select(moorObjectives)..where((_objectives) => _objectives.id.equals(id));
    return _contentQuery.getSingle();
  }

  Future<int> deleteAllObjectives() => delete(moorObjectives).go();
}
