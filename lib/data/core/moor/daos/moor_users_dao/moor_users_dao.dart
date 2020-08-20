import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_users_dao.g.dart';

@UseDao(tables: [
  MoorUsers,
  MoorOptions,
  UserFollowRelations,
])
class MoorUsersDao extends DatabaseAccessor<Database> with _$MoorUsersDaoMixin {
  MoorUsersDao(Database db) : super(db);

  Future insertUser(Insertable<MoorUser> user) => into(moorUsers).insert(user);

  Future updateUser(Insertable<MoorUser> user) => update(moorUsers).replace(user);

  Future<MoorUser> getLoggedInUser() async {
    final _userQuery = select(moorUsers)
      ..where((user) => user.isLoggedIn)
      ..limit(1)
      ..get();
    return _userQuery.getSingle();
  }

  Future<MoorUser> getUserByUsernameAndPassword({
    @required String username,
    @required String password,
  }) async {
    final userQuery = select(moorUsers)
      ..where(
        (user) =>
            user.username.equals(
              username,
            ) &
            user.password.equals(
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
          (rows) => rows
              .map(
                (row) => row.readTable(moorUsers),
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
          (rows) => rows
              .map(
                (row) => row.readTable(moorUsers),
              )
              .toList(),
        );
  }

  Future<MoorOption> getUserOptions(int userId) async {
    final _userQuery = select(moorOptions)
      ..where((options) => options.userId.equals(userId))
      ..limit(1)
      ..get();
    return _userQuery.getSingle();
  }
}
