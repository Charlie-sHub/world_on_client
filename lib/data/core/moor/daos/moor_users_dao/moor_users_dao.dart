import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import '../../tables/moor_options.dart';
import '../../tables/moor_users.dart';

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

  Future<int> blockUser(Insertable<UserBlockRelation> userBlockRelation) => into(userBlockRelations).insert(
        userBlockRelation,
        mode: InsertMode.replace,
      );

  Future<int> unBlockUser(Insertable<UserBlockRelation> userBlockRelation) => delete(userBlockRelations).delete(userBlockRelation);

  Future<int> followUser(Insertable<UserFollowRelation> userFollowRelation) => into(userFollowRelations).insert(
        userFollowRelation,
        mode: InsertMode.replace,
      );

  Future<int> unFollowUser(Insertable<UserFollowRelation> userFollowRelation) => delete(userFollowRelations).delete(userFollowRelation);

  Future<int> deleteAllUsers() => delete(moorUsers).go();

  Future<int> deleteAllUsersFollowRelations() => delete(userFollowRelations).go();

  Future<int> deleteAllUsersBlockRelations() => delete(userBlockRelations).go();

  Future<int> countUsers() async {
    final _moorUserList = await select(moorUsers).get();
    return _moorUserList.length;
  }

  Future<MoorUser> getLoggedInUser() async {
    final _userQuery = select(moorUsers)
      ..where(
        (_user) => _user.isLoggedIn,
      )
      ..limit(1);
    return _userQuery.getSingle();
  }

  Future<MoorUser> getUserById(int id) async {
    final _experienceQuery = select(moorUsers)
      ..where(
        (_user) => _user.id.equals(id),
      );
    return _experienceQuery.getSingle();
  }

  Future<MoorUser> getUserByUsernameAndPassword({
    @required String username,
    @required String password,
  }) async {
    final _userQuery = select(moorUsers)
      ..where(
        (_user) =>
            _user.username.equals(
              username,
            ) &
            _user.password.equals(
              password,
            ),
      );
    return _userQuery.getSingle();
  }

  Stream<List<MoorUser>> watchSearchUsersByUserName(String username) {
    final _searchQuery = select(moorUsers)..where((moorUsers) => moorUsers.username.contains(username));
    return _searchQuery.watch();
  }

  Stream<List<MoorUser>> watchSearchUsersByName(String name) {
    final _searchQuery = select(moorUsers)..where((moorUsers) => moorUsers.name.contains(name));
    return _searchQuery.watch();
  }

  Stream<List<MoorUser>> watchFollowingUsers(int userId) {
    final _followedUsersQuery = select(userFollowRelations).join(
      [
        innerJoin(
          moorUsers,
          moorUsers.id.equalsExp(userFollowRelations.followingId),
        ),
      ],
    )..where((userFollowRelations.followedId.equals(userId)));
    return _followedUsersQuery.watch().map(_createMoorUserList);
  }

  Stream<List<MoorUser>> watchFollowedUsers(int userId) {
    final _followingUsersQuery = select(userFollowRelations).join(
      [
        innerJoin(
          moorUsers,
          moorUsers.id.equalsExp(userFollowRelations.followedId),
        ),
      ],
    )..where((userFollowRelations.followingId.equals(userId)));
    return _followingUsersQuery.watch().map(_createMoorUserList);
  }

  List<MoorUser> _createMoorUserList(List<TypedResult> rows) => rows.map((_row) => _row.readTable(moorUsers)).toList();
}
