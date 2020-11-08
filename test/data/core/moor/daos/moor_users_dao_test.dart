import 'package:flutter_test/flutter_test.dart';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/moor/converters/domain_user_to_moor_user_companion.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import '../../../../test_descriptions.dart';

void main() {
  Database _database;
  setUp(
    () {
      _database = Database.test(VmDatabase.memory());
    },
  );
  tearDown(
    () async {
      await _database.close();
    },
  );
  final _user = getValidUser();
  final _moorUserRicky = domainUserToMoorUserCompanion(_user).copyWith(
    isLoggedIn: const Value(false),
  );
  final _moorUserCharlie = _moorUserRicky.copyWith(
    name: const Value("Carlos"),
    username: const Value("charlie"),
    email: const Value("wew@lad.lel"),
    description: const Value("Why even live?"),
  );
  final _moorUserBro = _moorUserRicky.copyWith(
    name: const Value("Bro"),
    username: const Value("suck_lid"),
    email: const Value("chicken@huck.moguls"),
    description: const Value("Snake bite nose press flow couloir, poaching freshies OTB ride"),
  );
  final _moorUserHipster = _moorUserRicky.copyWith(
    name: const Value("I'm baby"),
    username: const Value("stumptown"),
    email: const Value("paleo@pork.belly"),
    description: const Value("Vinyl succulents poutine brunch twee, gentrify cred listicle affogato four dollar toast."),
  );
  final _moorUserList = [
    _moorUserRicky,
    _moorUserCharlie,
    _moorUserBro,
    _moorUserHipster,
  ];
  const _searchTerm = "i";
  test(
    "Should insert _moorUserRicky",
    () async {
      // Act
      final _insertedUserId = _moorUserRicky.id.value;
      await _database.moorUsersDao.insertUser(_moorUserRicky);
      final _moorUser = await _database.moorUsersDao.getUserById(_insertedUserId);
      // Assert
      expect(_moorUser.toCompanion(true), _moorUserRicky.copyWith(id: Value(_insertedUserId)));
    },
  );
  test(
    "Should return the count of the users inserted",
    () async {
      // Act
      for (final _moorUser in _moorUserList) {
        await _database.moorUsersDao.insertUser(_moorUser);
      }
      final _userCount = await _database.moorUsersDao.countUsers();
      // Assert
      expect(_userCount, _moorUserList.length);
    },
  );
  test(
    "Should update _moorUserRicky",
    () async {
      // Arrange
      const _newName = "Charlie";
      // Act
      final _insertedUserId = _moorUserRicky.id.value;
      await _database.moorUsersDao.insertUser(_moorUserRicky);
      final _moorUserToUpdate = await _database.moorUsersDao.getUserById(_insertedUserId);
      await _database.moorUsersDao.updateUser(_moorUserToUpdate.copyWith(name: _newName));
      final _moorUser = await _database.moorUsersDao.getUserById(_insertedUserId);
      // Assert
      expect(
        _moorUser.toCompanion(true),
        _moorUserRicky.copyWith(
          id: Value(_insertedUserId),
          name: const Value(_newName),
        ),
      );
    },
  );
  group(
    "Testing blocks",
    () {
      test(
        "Should insert a block relation",
        () async {
          // Act
          final _moorUserRickyId = _moorUserRicky.id.value;
          await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _moorUserCharlieId = _moorUserCharlie.id.value;
          await _database.moorUsersDao.insertUser(_moorUserCharlie);
          final _blockRelation = UserBlockRelationsCompanion.insert(
            blockedId: _moorUserRickyId,
            blockerId: _moorUserCharlieId,
          );
          final _blockedId = await _database.moorUsersDao.blockUser(_blockRelation);
          // Assert
          expect(_blockedId, _moorUserRickyId);
        },
      );
      test(
        "Should remove the inserted block relation",
        () async {
          // Act
          final _moorUserRickyId = _moorUserRicky.id.value;
          await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _moorUserCharlieId = _moorUserCharlie.id.value;
          await _database.moorUsersDao.insertUser(_moorUserCharlie);
          final _blockRelation = UserBlockRelationsCompanion.insert(
            blockedId: _moorUserRickyId,
            blockerId: _moorUserCharlieId,
          );
          await _database.moorUsersDao.blockUser(_blockRelation);
          final _blocksRemovedCount = await _database.moorUsersDao.unBlockUser(_blockRelation);
          // Assert
          expect(_blocksRemovedCount, 1);
        },
      );
    },
  );
  group(
    "Testing follows",
    () {
      test(
        "Should insert a follow relation",
        () async {
          // Act
          final _moorUserRickyId = _moorUserRicky.id.value;
          await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _moorUserCharlieId = _moorUserCharlie.id.value;
          await _database.moorUsersDao.insertUser(_moorUserCharlie);
          final _followRelation = UserFollowRelationsCompanion.insert(
            followedId: _moorUserRickyId,
            followingId: _moorUserCharlieId,
          );
          final _followId = await _database.moorUsersDao.followUser(_followRelation);
          // Assert
          expect(_followId, _moorUserRickyId);
        },
      );
      test(
        "Should remove the inserted follow relation",
        () async {
          // Act
          final _moorUserRickyId = _moorUserRicky.id.value;
          await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _moorUserCharlieId = _moorUserCharlie.id.value;
          await _database.moorUsersDao.insertUser(_moorUserCharlie);
          final _followRelation = UserFollowRelationsCompanion.insert(
            followedId: _moorUserRickyId,
            followingId: _moorUserCharlieId,
          );
          await _database.moorUsersDao.followUser(_followRelation);
          final _followsRemovedCount = await _database.moorUsersDao.unFollowUser(_followRelation);
          // Assert
          expect(_followsRemovedCount, 1);
        },
      );
    },
  );
  group(
    TestDescription.groupDeletion,
    () {
      test(
        "Should delete all users",
        () async {
          // Act
          for (final _moorUser in _moorUserList) {
            await _database.moorUsersDao.insertUser(_moorUser);
          }
          final _usersDeletedAmount = await _database.moorUsersDao.deleteAllUsers();
          // Assert
          expect(_usersDeletedAmount, _moorUserList.length);
        },
      );
      test(
        "Should delete all follow relations",
        () async {
          // Act
          final _moorUserRickyId = _moorUserRicky.id.value;
          await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _moorUserCharlieId = _moorUserCharlie.id.value;
          await _database.moorUsersDao.insertUser(_moorUserCharlie);
          final _followRelationsList = [
            UserFollowRelationsCompanion.insert(
              followedId: _moorUserCharlieId,
              followingId: _moorUserRickyId,
            ),
            UserFollowRelationsCompanion.insert(
              followedId: _moorUserRickyId,
              followingId: _moorUserCharlieId,
            ),
          ];
          for (final _followRelation in _followRelationsList) {
            await _database.moorUsersDao.followUser(_followRelation);
          }
          final _followsDeletedAmount = await _database.moorUsersDao.deleteAllUsers();
          // Assert
          expect(_followsDeletedAmount, _followRelationsList.length);
        },
      );
      test(
        "Should delete all block relations",
        () async {
          // Act
          final _moorUserRickyId = _moorUserRicky.id.value;
          await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _moorUserCharlieId = _moorUserCharlie.id.value;
          await _database.moorUsersDao.insertUser(_moorUserCharlie);
          final _blockRelationsList = [
            UserBlockRelationsCompanion.insert(
              blockedId: _moorUserRickyId,
              blockerId: _moorUserCharlieId,
            ),
            UserBlockRelationsCompanion.insert(
              blockedId: _moorUserCharlieId,
              blockerId: _moorUserRickyId,
            ),
          ];
          for (final _blockRelation in _blockRelationsList) {
            await _database.moorUsersDao.blockUser(_blockRelation);
          }
          final _blocksDeletedAmount = await _database.moorUsersDao.deleteAllUsers();
          // Assert
          expect(_blocksDeletedAmount, _blockRelationsList.length);
        },
      );
    },
  );
  group(
    "Testing getting Users",
    () {
      test(
        "Should return the logged in user",
        () async {
          // Act
          await _database.moorUsersDao.insertUser(_moorUserRicky.copyWith(isLoggedIn: const Value(true)));
          final _moorUser = await _database.moorUsersDao.getLoggedInUser();
          // Assert
          expect(
            _moorUser.fold(
              () => null,
              (_userWithRelations) => _userWithRelations.user.toCompanion(true),
            ),
            _moorUserRicky.copyWith(isLoggedIn: const Value(true)),
          );
        },
      );
      test(
        "Should return the user with the given username and password",
        () async {
          final username = _moorUserRicky.username.value;
          final password = _moorUserRicky.password.value;
          // Act
          await _database.moorUsersDao.insertUser(_moorUserRicky.copyWith(isLoggedIn: const Value(true)));
          final _moorUser = await _database.moorUsersDao.getUserByUsernameAndPassword(
            username: username,
            password: password,
          );
          // Assert
          expect(
            _moorUser.toCompanion(true),
            _moorUserRicky.copyWith(isLoggedIn: const Value(true)),
          );
        },
      );
    },
  );
  group(
    TestDescription.groupStreams,
    () {
      test(
        "Should emit a stream of lists of users by their username",
        () async {
          // Arrange
          final _searchResults = <MoorUser>[];
          // Act
          for (final _moorUser in _moorUserList) {
            await _database.moorUsersDao.insertUser(_moorUser);
            if (_moorUser.username.value.contains(_searchTerm)) {
              final _userInserted = await _database.moorUsersDao.getUserById(_moorUser.id.value);
              _searchResults.add(_userInserted);
            }
          } // Assert
          expectLater(_database.moorUsersDao.watchSearchUsersByUserName(_searchTerm), emitsInOrder([_searchResults]));
        },
      );
      test(
        "Should emit a stream of lists of users by their name",
        () async {
          // Arrange
          final _searchResults = <MoorUser>[];
          // Act
          for (final _moorUser in _moorUserList) {
            await _database.moorUsersDao.insertUser(_moorUser);
            if (_moorUser.name.value.contains(_searchTerm.toLowerCase()) || _moorUser.name.value.contains(_searchTerm.toUpperCase())) {
              final _userInserted = await _database.moorUsersDao.getUserById(_moorUser.id.value);
              _searchResults.add(_userInserted);
            }
          } // Assert
          expectLater(_database.moorUsersDao.watchSearchUsersByName(_searchTerm), emitsInOrder([_searchResults]));
        },
      );
      test(
        "Should emit a stream of lists of the users followed by _moorUserCharlie",
        () async {
          // Act
          final _moorUserRickyId = _moorUserRicky.id.value;
          await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _moorUserCharlieId = _moorUserCharlie.id.value;
          await _database.moorUsersDao.insertUser(_moorUserCharlie);
          final _moorUserBroId = _moorUserBro.id.value;
          await _database.moorUsersDao.insertUser(_moorUserBro);
          final _followedUsersList = [
            _moorUserBro.copyWith(id: Value(_moorUserBroId)),
          ];
          final _followRelationsList = _createFollowRelationsList(_moorUserCharlieId, _moorUserRickyId, _moorUserBroId);
          for (final _followRelation in _followRelationsList) {
            await _database.moorUsersDao.followUser(_followRelation);
          } // Assert
          expectLater(
            _database.moorUsersDao.watchFollowedUsers(_moorUserCharlieId).map(_moorUserToCompanionList),
            emitsInOrder([_followedUsersList]),
          );
        },
      );
      test(
        "Should emit a stream of lists of the users following _moorUserBroId",
        () async {
          // Act
          final _moorUserRickyId = _moorUserRicky.id.value;
          await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _moorUserCharlieId = _moorUserCharlie.id.value;
          await _database.moorUsersDao.insertUser(_moorUserCharlie);
          final _moorUserBroId = _moorUserBro.id.value;
          await _database.moorUsersDao.insertUser(_moorUserBro);
          final _followingUsersList = [
            _moorUserRicky.copyWith(id: Value(_moorUserRickyId)),
            _moorUserCharlie.copyWith(id: Value(_moorUserCharlieId)),
          ];
          final _followRelationsList = _createFollowRelationsList(_moorUserCharlieId, _moorUserRickyId, _moorUserBroId);
          for (final _followRelation in _followRelationsList) {
            await _database.moorUsersDao.followUser(_followRelation);
          }
          // Assert
          expectLater(
            _database.moorUsersDao.watchFollowingUsers(_moorUserBroId).map(_moorUserToCompanionList),
            emitsInOrder([_followingUsersList]),
          );
        },
      );
    },
  );
}

List<UserFollowRelationsCompanion> _createFollowRelationsList(String someUserId, String otherUserId, String yetAnotherUserId) {
  return [
    UserFollowRelationsCompanion.insert(
      followedId: someUserId,
      followingId: otherUserId,
    ),
    UserFollowRelationsCompanion.insert(
      followedId: someUserId,
      followingId: yetAnotherUserId,
    ),
    UserFollowRelationsCompanion.insert(
      followedId: otherUserId,
      followingId: yetAnotherUserId,
    ),
    UserFollowRelationsCompanion.insert(
      followedId: yetAnotherUserId,
      followingId: otherUserId,
    ),
    UserFollowRelationsCompanion.insert(
      followedId: yetAnotherUserId,
      followingId: someUserId,
    ),
  ];
}

List<MoorUsersCompanion> _moorUserToCompanionList(List<MoorUser> _moorUserList) => _moorUserList
    .map(
      (_moorUser) => _moorUser.toCompanion(true),
    )
    .toList();
