import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

part 'moor_users_dao.g.dart';

@UseDao(tables: [MoorUsers])
class MoorUsersDao extends DatabaseAccessor<Database> with _$MoorUsersDaoMixin {
  MoorUsersDao(Database db) : super(db);

  Future createUser(Insertable<MoorUser> user) => into(moorUsers).insert(user);

  // Leave the logic of the following use cases to the repositories
  // At the end of the day they all just update the user in different ways
  //  logIn
  //  rewardUser
  //  editUser
  //  blockUser
  //  unBlockUser
  //  followUser
  //  unFollowUser
  //  addExperienceToLog
  //  dismissExperienceFromLog
  //  likeExperience
  //  finishExperience
  //  addTagToInterests
  //  dismissTagFromInterests
  Future updateUser(Insertable<MoorUser> user) => update(moorUsers).replace(user);

  Stream<List<MoorUser>> watchFollowedUsers(MoorUser user) {
    // TODO: Implement this method
    return null;
  }

  Stream<List<MoorUser>> watchFollowingUsers(MoorUser user) {
    // TODO: Implement this method
    return null;
  }

  Stream<List<MoorUser>> watchSearchUsersByName(String name) {
    // TODO: Implement this method
    return null;
  }

  Stream<List<MoorUser>> watchSearchUsersByUserName(String username) {
    // TODO: Implement this method
    return null;
  }
}
