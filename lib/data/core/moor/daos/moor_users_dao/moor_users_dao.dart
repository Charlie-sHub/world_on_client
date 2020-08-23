import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_users_dao.g.dart';

@UseDao(tables: [
  MoorUsers,
  MoorOptions,
  UserFollowRelations,
  UserBlockRelations,
])
class MoorUsersDao extends DatabaseAccessor<Database> with _$MoorUsersDaoMixin {
  MoorUsersDao(Database db) : super(db);

  Future<int> insertUser(Insertable<MoorUser> user) => into(moorUsers).insert(user);

  Future updateUser(Insertable<MoorUser> user) => update(moorUsers).replace(user);

  Future blockUser(Insertable<UserBlockRelation> userBlockRelation) => into(userBlockRelations).insert(userBlockRelation);

  Future unBlockUser(Insertable<UserBlockRelation> userBlockRelation) => delete(userBlockRelations).delete(userBlockRelation);

  Future followUser(Insertable<UserFollowRelation> userFollowRelation) => into(userFollowRelations).insert(userFollowRelation);

  Future unFollowUser(Insertable<UserFollowRelation> userFollowRelation) => delete(userFollowRelations).delete(userFollowRelation);

  Future<int> deleteAllUsers() => delete(moorUsers).go();

  Future<int> countUsers() async {
    final _moorUserList = await select(moorUsers).get();
    return _moorUserList.length;
  }

  Future<MoorUser> getLoggedInUser() async {
    final _userQuery = select(moorUsers)
      ..where(
        (_user) => _user.isLoggedIn,
      )
      ..limit(1)
      ..get();
    return _userQuery.getSingle();
  }

  Future<MoorUser> selectUserById(int id) async {
    final _experienceQuery = select(moorUsers)
      ..where(
          (_user) => _user.id.equals(id),
      )
      ..limit(1)
      ..get();
    return _experienceQuery.getSingle();
  }

  Future<MoorUser> getUserByUsernameAndPassword({
    @required String username,
    @required String password,
  }) async {
    final userQuery = select(moorUsers)
      ..where(
          (_user) =>
        _user.username.equals(
          username,
        ) &
        _user.password.equals(
          password,
        ),
      );
    return userQuery.getSingle();
  }

  Stream<List<MoorUser>> watchSearchUsersByUserName(String username) {
    final _contentQuery = select(moorUsers)..where((moorUsers) => moorUsers.username.equals(username));
    return _contentQuery.watch();
  }

  Stream<List<MoorUser>> watchSearchUsersByName(String name) {
    final _contentQuery = select(moorUsers)..where((moorUsers) => moorUsers.name.equals(name));
    return _contentQuery.watch();
  }

  Stream<List<MoorUser>> watchFollowedUsers(int userId) {
    final _contentQuery = select(userFollowRelations).join(
      [
        innerJoin(
          moorUsers,
          moorUsers.id.equalsExp(userFollowRelations.followingId),
        ),
      ],
    )..where((userFollowRelations.followingId.equals(userId)));
    return _contentQuery.watch().map(
        (_rows) =>
        _rows
          .map(
            (_row) => _row.readTable(moorUsers),
        )
          .toList(),
        );
  }

  Stream<List<MoorUser>> watchFollowingUsers(int userId) {
    final _contentQuery = select(userFollowRelations).join(
      [
        innerJoin(
          moorUsers,
          moorUsers.id.equalsExp(userFollowRelations.followedId),
        ),
      ],
    )..where((userFollowRelations.followedId.equals(userId)));
    return _contentQuery.watch().map(
        (_rows) =>
        _rows
          .map(
            (_row) => _row.readTable(moorUsers),
        )
          .toList(),
        );
  }
}
