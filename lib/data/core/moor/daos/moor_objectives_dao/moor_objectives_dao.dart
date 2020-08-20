import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_objectives_dao.g.dart';

@UseDao(tables: [MoorObjectives])
class MoorObjectivesDao extends DatabaseAccessor<Database> with _$MoorObjectivesDaoMixin {
  MoorObjectivesDao(Database db) : super(db);

  Future insertObjective(Insertable<MoorObjective> objective) => into(moorObjectives).insert(objective);

  Future<List<MoorObjective>> selectExperienceObjectives(int experienceId) async {
    final _contentQuery = select(moorObjectives)..where((moorObjective) => moorObjective.experienceId.equals(experienceId));
    return _contentQuery.get();
  }
}
