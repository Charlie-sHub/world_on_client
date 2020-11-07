import 'package:dartz/dartz.dart';
import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/daos/moor_users_dao/moor_user_with_relations.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import '../../tables/moor_options.dart';
import '../../tables/moor_users.dart';

part 'moor_users_dao.g.dart';

@UseDao(tables: [
  MoorUsers,
  MoorOptions,
  MoorOptions,
  UserAchievements,
  UserDoneExperiences,
  UserLikedExperiences,
  UserToDoExperiences,
  UserInterests,
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

  Future<Option<MoorUserWithRelations>> getLoggedInUser() async {
    final _userQuery = select(moorUsers)
      ..where(
        (_user) => _user.isLoggedIn,
      );
    final _moorUser = await _userQuery.getSingle();
    if (_moorUser != null) {
      final _usersBlockedIds = await _getBlockedUsersIds(_moorUser);
      final _usersFollowedIds = await _getFollowedUsersIds(_moorUser);
      final _userInterestsIds = await _getUserInterestIds(_moorUser);
      final _userAchievementsIds = await _getUserAchievementsIds(_moorUser);
      final _userDoneExperiencesIds = await _getUserDoneExperiencesIds(_moorUser);
      final _userLikedExperiencesIds = await _getUserLikedExperiencesIds(_moorUser);
      final _userToDoExperiencesIds = await _getUserToDoExperiencesIds(_moorUser);
      final _moorUserWithRelations = MoorUserWithRelations(
        user: _moorUser,
        blockedUsersIds: _usersBlockedIds,
        followedUsersIds: _usersFollowedIds,
        interestsIds: _userInterestsIds,
        achievementsIds: _userAchievementsIds,
        experiencesDoneIds: _userDoneExperiencesIds,
        experiencesLikedIds: _userLikedExperiencesIds,
        experiencesToDoIds: _userToDoExperiencesIds,
      );
      return some(_moorUserWithRelations);
    } else {
      return none();
    }
  }

  Future<Set<String>> _getUserToDoExperiencesIds(MoorUser _moorUser) async {
    final _userExperiencesToDoQuery = select(userToDoExperiences)..where((userToDoExperiences) => userToDoExperiences.userId.equals(_moorUser.id));
    final _userToDoExperiences = await _userExperiencesToDoQuery.get();
    final _userToDoExperiencesIds = _userToDoExperiences.map((userToDoExperiences) => userToDoExperiences.experienceId).toSet();
    return _userToDoExperiencesIds;
  }

  Future<Set<String>> _getUserLikedExperiencesIds(MoorUser _moorUser) async {
    final _userExperiencesLikedQuery = select(userLikedExperiences)..where((userLikedExperiences) => userLikedExperiences.userId.equals(_moorUser.id));
    final _userLikedExperiences = await _userExperiencesLikedQuery.get();
    final _userLikedExperiencesIds = _userLikedExperiences.map((userLikedExperiences) => userLikedExperiences.experienceId).toSet();
    return _userLikedExperiencesIds;
  }

  Future<Set<String>> _getUserDoneExperiencesIds(MoorUser _moorUser) async {
    final _userExperiencesDoneQuery = select(userDoneExperiences)..where((userDoneExperiences) => userDoneExperiences.userId.equals(_moorUser.id));
    final _userDoneExperiences = await _userExperiencesDoneQuery.get();
    final _userDoneExperiencesIds = _userDoneExperiences.map((userDoneExperiences) => userDoneExperiences.experienceId).toSet();
    return _userDoneExperiencesIds;
  }

  Future<Set<String>> _getUserAchievementsIds(MoorUser _moorUser) async {
    final _userAchievementsQuery = select(userAchievements)..where((userAchievements) => userAchievements.userId.equals(_moorUser.id));
    final _userAchievements = await _userAchievementsQuery.get();
    final _userAchievementsIds = _userAchievements.map((userAchievements) => userAchievements.achievementId).toSet();
    return _userAchievementsIds;
  }

  Future<Set<String>> _getUserInterestIds(MoorUser _moorUser) async {
    final _userInterestsQuery = select(userInterests)..where((userInterests) => userInterests.userId.equals(_moorUser.id));
    final _userInterests = await _userInterestsQuery.get();
    final _userInterestsIds = _userInterests.map((userInterests) => userInterests.tagId).toSet();
    return _userInterestsIds;
  }

  Future<Set<String>> _getFollowedUsersIds(MoorUser _moorUser) async {
    final _followedUsersQuery = select(userFollowRelations)..where((userFollowRelations) => userFollowRelations.followingId.equals(_moorUser.id));
    final _userFollowRelations = await _followedUsersQuery.get();
    final _usersFollowedIds = _userFollowRelations.map((_followRelation) => _followRelation.followedId).toSet();
    return _usersFollowedIds;
  }

  Future<Set<String>> _getBlockedUsersIds(MoorUser _moorUser) async {
    final _blockedUsersQuery = select(userBlockRelations)..where((userBlockRelations) => userBlockRelations.blockerId.equals(_moorUser.id));
    final _userBlockRelations = await _blockedUsersQuery.get();
    final _usersBlockedIds = _userBlockRelations.map((_blockRelation) => _blockRelation.blockedId).toSet();
    return _usersBlockedIds;
  }

  Future<MoorUser> getUserById(String id) async {
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

  Stream<List<MoorUser>> watchFollowingUsers(String userId) {
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

  Stream<List<MoorUser>> watchFollowedUsers(String userId) {
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
