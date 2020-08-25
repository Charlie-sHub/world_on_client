import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import '../../tables/moor_rewards.dart';

part 'moor_rewards_dao.g.dart';

@UseDao(
  tables: [
    MoorRewards,
  ],
)
class MoorRewardsDao extends DatabaseAccessor<Database> with _$MoorRewardsDaoMixin {
  MoorRewardsDao(Database db) : super(db);

  Future insertReward(Insertable<MoorReward> reward) => into(moorRewards).insert(reward);

  Future<MoorReward> selectRewardById(int id) async {
    final _contentQuery = select(moorRewards)..where((_rewards) => _rewards.id.equals(id));
    return _contentQuery.getSingle();
  }

  Future<int> deleteAllRewards() => delete(moorRewards).go();
}
