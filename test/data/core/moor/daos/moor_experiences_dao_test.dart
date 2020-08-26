import 'package:flutter_test/flutter_test.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_objective.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_reward.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/moor/converters/domain_experience_to_moor_experience.dart';
import 'package:worldon/data/core/moor/converters/domain_objective_to_moor_objective.dart';
import 'package:worldon/data/core/moor/converters/domain_reward_to_moor_reward.dart';
import 'package:worldon/data/core/moor/converters/domain_tag_to_moor_tag.dart';
import 'package:worldon/data/core/moor/converters/domain_user_to_moor_user_companion.dart';
import 'package:worldon/data/core/moor/converters/moor_experience_to_domain_experience.dart';
import 'package:worldon/data/core/moor/daos/moor_experiences_dao/moor_experience_with_relations.dart';
import 'package:worldon/data/core/moor/daos/moor_tags_dao/moor_tag_with_moor_user.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/objective/objective.dart';
import 'package:worldon/domain/core/entities/reward/reward.dart';

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
  final _experience = getValidExperience();
  const _difficulty = 7;
  test(
    "Should return the amount of experiences in the database",
    () async {
      // Arrange
      final _userId = await _insertCreator(_database);
      final _experienceList = _createExperienceList(_userId, _difficulty);
      // Act
      for (final _moorExperience in _experienceList) {
        await _database.moorExperiencesDao.insertExperience(_moorExperience);
      }
      final _experiencesAmount = await _database.moorExperiencesDao.countExperiences();
      // Assert
      expect(_experiencesAmount, _experienceList.length);
    },
  );
  group(
    "Testing inserts",
    () {
      test(
        "Should insert an experience",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorExperience = domainExperienceToMoorExperience(_experience).copyWith(creatorId: Value(_userId));
          // Act
          final _experienceId = await _database.moorExperiencesDao.insertExperience(_moorExperience);
          final _insertedExperience = await _database.moorExperiencesDao.getExperienceById(_experienceId);
          // Assert
          expect(_insertedExperience.toCompanion(true), _moorExperience.copyWith(id: Value(_experienceId)));
        },
      );
      test(
        "Should update an experience",
        () async {
          // Arrange
          const _newName = "Testing";
          final _userId = await _insertCreator(_database);
          final _moorExperience = domainExperienceToMoorExperience(_experience).copyWith(creatorId: Value(_userId));
          // Act
          final _experienceId = await _database.moorExperiencesDao.insertExperience(_moorExperience);
          final _experienceToUpdate = await _database.moorExperiencesDao.getExperienceById(_experienceId);
          await _database.moorExperiencesDao.updateExperience(_experienceToUpdate.copyWith(title: _newName));
          final _updatedExperience = await _database.moorExperiencesDao.getExperienceById(_experienceId);
          // Assert
          expect(
            _updatedExperience.toCompanion(true),
            _moorExperience.copyWith(
              id: Value(_experienceId),
              title: const Value(_newName),
            ),
          );
        },
      );
      test(
        "Should insert an experience to do",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorExperience = domainExperienceToMoorExperience(_experience).copyWith(creatorId: Value(_userId));
          // Act
          final _experienceId = await _database.moorExperiencesDao.insertExperience(_moorExperience);
          final _experienceTodo = UserToDoExperiencesCompanion.insert(
            userId: _userId,
            experienceId: _experienceId,
          );
          final _insertedToDoId = await _database.moorExperiencesDao.insertExperienceTodo(_experienceTodo);
          // Assert
          expect(_insertedToDoId, _experienceTodo.userId.value);
        },
      );
      test(
        "Should insert an experience done",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorExperience = domainExperienceToMoorExperience(_experience).copyWith(creatorId: Value(_userId));
          // Act
          final _experienceId = await _database.moorExperiencesDao.insertExperience(_moorExperience);
          final _experienceDone = UserDoneExperiencesCompanion.insert(
            userId: _userId,
            experienceId: _experienceId,
          );
          final _insertedDoneId = await _database.moorExperiencesDao.insertExperienceDone(_experienceDone);
          // Assert
          expect(_insertedDoneId, _experienceDone.userId.value);
        },
      );
      test(
        "Should insert an experience liked",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorExperience = domainExperienceToMoorExperience(_experience).copyWith(creatorId: Value(_userId));
          // Act
          final _experienceId = await _database.moorExperiencesDao.insertExperience(_moorExperience);
          final _experienceLiked = UserLikedExperiencesCompanion.insert(
            userId: _userId,
            experienceId: _experienceId,
          );
          final _insertedLikedId = await _database.moorExperiencesDao.insertExperienceLiked(_experienceLiked);
          // Assert
          expect(_insertedLikedId, _experienceLiked.userId.value);
        },
      );
      test(
        "Should insert an experience image url",
        () async {
          // Arrange
          const _imageUrl = "test/test.jpg";
          final _userId = await _insertCreator(_database);
          final _moorExperience = domainExperienceToMoorExperience(_experience).copyWith(creatorId: Value(_userId));
          // Act
          final _experienceId = await _database.moorExperiencesDao.insertExperience(_moorExperience);
          final _experienceImageURL = ExperienceImageUrlsCompanion.insert(
            imageUrl: _imageUrl,
            experienceId: _experienceId,
          );
          final _insertedLikedId = await _database.moorExperiencesDao.insertExperienceImage(_experienceImageURL);
          // Assert
          expect(_insertedLikedId, _experienceImageURL.experienceId.value);
        },
      );
    },
  );
  group(
    TestDescription.groupDeletion,
    () {
      test(
        "Should remove an experience to do",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorExperience = domainExperienceToMoorExperience(_experience).copyWith(creatorId: Value(_userId));
          // Act
          final _experienceId = await _database.moorExperiencesDao.insertExperience(_moorExperience);
          final _experienceTodo = UserToDoExperiencesCompanion.insert(
            userId: _userId,
            experienceId: _experienceId,
          );
          await _database.moorExperiencesDao.insertExperienceTodo(_experienceTodo);
          final _removedAmount = await _database.moorExperiencesDao.removeExperienceTodo(_experienceTodo);
          // Assert
          expect(_removedAmount, 1);
        },
      );
      test(
        "Should delete all experiences",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _experienceList = _createExperienceList(_userId, _difficulty);
          // Act
          for (final _moorExperience in _experienceList) {
            await _database.moorExperiencesDao.insertExperience(_moorExperience);
          }
          final _experiencesAmount = await _database.moorExperiencesDao.countExperiences();
          final _experiencesDeletedAmount = await _database.moorExperiencesDao.deleteAllExperiences();
          // Assert
          expect(_experiencesDeletedAmount, _experiencesAmount);
        },
      );
      test(
        "Should remove all experiences to do",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorExperience = domainExperienceToMoorExperience(_experience).copyWith(creatorId: Value(_userId));
          final _otherMoorExperience = _moorExperience.copyWith(title: const Value("Test"));
          // Act
          final _experienceId = await _database.moorExperiencesDao.insertExperience(_moorExperience);
          final _otherExperienceId = await _database.moorExperiencesDao.insertExperience(_otherMoorExperience);
          final _experienceTodoList = [
            UserToDoExperiencesCompanion.insert(
              userId: _userId,
              experienceId: _experienceId,
            ),
            UserToDoExperiencesCompanion.insert(
              userId: _userId,
              experienceId: _otherExperienceId,
            )
          ];
          for (final _experienceToDo in _experienceTodoList) {
            await _database.moorExperiencesDao.insertExperienceTodo(_experienceToDo);
          }
          final _removedAmount = await _database.moorExperiencesDao.deleteAllUsersToDoExperiences();
          // Assert
          expect(_removedAmount, _experienceTodoList.length);
        },
      );
      test(
        "Should remove all experiences done",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorExperience = domainExperienceToMoorExperience(_experience).copyWith(creatorId: Value(_userId));
          final _otherMoorExperience = _moorExperience.copyWith(title: const Value("Test"));
          // Act
          final _experienceId = await _database.moorExperiencesDao.insertExperience(_moorExperience);
          final _otherExperienceId = await _database.moorExperiencesDao.insertExperience(_otherMoorExperience);
          final _experienceDoneList = [
            UserDoneExperiencesCompanion.insert(
              userId: _userId,
              experienceId: _experienceId,
            ),
            UserDoneExperiencesCompanion.insert(
              userId: _userId,
              experienceId: _otherExperienceId,
            )
          ];
          for (final _experienceToDo in _experienceDoneList) {
            await _database.moorExperiencesDao.insertExperienceDone(_experienceToDo);
          }
          final _removedAmount = await _database.moorExperiencesDao.deleteAllUsersDoneExperiences();
          // Assert
          expect(_removedAmount, _experienceDoneList.length);
        },
      );
      test(
        "Should remove all experiences liked",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorExperience = domainExperienceToMoorExperience(_experience).copyWith(creatorId: Value(_userId));
          final _otherMoorExperience = _moorExperience.copyWith(title: const Value("Test"));
          // Act
          final _experienceId = await _database.moorExperiencesDao.insertExperience(_moorExperience);
          final _otherExperienceId = await _database.moorExperiencesDao.insertExperience(_otherMoorExperience);
          final _experienceLikedList = [
            UserLikedExperiencesCompanion.insert(
              userId: _userId,
              experienceId: _experienceId,
            ),
            UserLikedExperiencesCompanion.insert(
              userId: _userId,
              experienceId: _otherExperienceId,
            )
          ];
          for (final _experienceToDo in _experienceLikedList) {
            await _database.moorExperiencesDao.insertExperienceLiked(_experienceToDo);
          }
          final _removedAmount = await _database.moorExperiencesDao.deleteAllUsersLikedExperiences();
          // Assert
          expect(_removedAmount, _experienceLikedList.length);
        },
      );
      test(
        "Should remove all experiences image urls",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorExperience = domainExperienceToMoorExperience(_experience).copyWith(creatorId: Value(_userId));
          final _otherMoorExperience = _moorExperience.copyWith(title: const Value("Test"));
          // Act
          final _experienceId = await _database.moorExperiencesDao.insertExperience(_moorExperience);
          final _otherExperienceId = await _database.moorExperiencesDao.insertExperience(_otherMoorExperience);
          final _experienceImageUrlList = [
            ExperienceImageUrlsCompanion.insert(
              imageUrl: "test/test1.jpg",
              experienceId: _experienceId,
            ),
            ExperienceImageUrlsCompanion.insert(
              imageUrl: "test/test1.jpg",
              experienceId: _otherExperienceId,
            )
          ];
          for (final _experienceImageUrl in _experienceImageUrlList) {
            await _database.moorExperiencesDao.insertExperienceImage(_experienceImageUrl);
          }
          final _removedAmount = await _database.moorExperiencesDao.deleteAllExperiencesImagesUrls();
          // Assert
          expect(_removedAmount, _experienceImageUrlList.length);
        },
      );
    },
  );
  group(
    TestDescription.groupStreams,
    () {
      final _user = getValidUser();
      final _objective = getValidObjective();
      final _reward = getValidReward();
      test(
        "Should emit a List of experiences created by the followed users of a given user",
        () async {
          // Arrange
          final _moorUserRicky = domainUserToMoorUserCompanion(_user);
          final _moorUserCharlie = _moorUserRicky.copyWith(
            username: const Value("charlie"),
            email: const Value("wew@lad.lel"),
          );
          final _moorUserRickyId = await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _moorUserCharlieId = await _database.moorUsersDao.insertUser(_moorUserCharlie);
          final _followRelation = UserFollowRelationsCompanion.insert(
            followedId: _moorUserRickyId,
            followingId: _moorUserCharlieId,
          );
          await _database.moorUsersDao.followUser(_followRelation);
          final _experienceCompanionList = _createExperienceList(_moorUserRickyId, _difficulty);
          final _tagCompanionList = _createTagList(_moorUserCharlieId);
          final _tagWithUserList = <MoorTagWithMoorUser>[];
          final _experienceList = <Experience>[];
          // Act
          await _insertTagList(_tagCompanionList, _database, _tagWithUserList);
          for (final _experienceCompanion in _experienceCompanionList) {
            final _moorExperienceWithRelations = await _insertExperienceAndRelations(
              _database,
              _experienceCompanion,
              _moorUserRickyId,
              _tagWithUserList,
              _objective,
              _reward,
            );
            _experienceList.add(moorExperienceToDomainExperience(_moorExperienceWithRelations));
          }
          final _mainFeedStream = _database.moorExperiencesDao.watchFeed(_moorUserCharlieId);
          // Assert
          expectLater(_mainFeedStream.map(_moorExperienceWithRelationsListToExperienceList), emitsInOrder([_experienceList]));
        },
      );
      test(
        "Should emit a List of experiences by their title",
        () async {
          // Arrange
          const _searchTerm = "m";
          final _moorUserRicky = domainUserToMoorUserCompanion(_user);
          final _moorUserRickyId = await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _experienceCompanionList = _createExperienceList(_moorUserRickyId, _difficulty);
          final _tagCompanionList = _createTagList(_moorUserRickyId);
          final _tagWithUserList = <MoorTagWithMoorUser>[];
          final _experienceList = <Experience>[];
          // Act
          await _insertTagList(_tagCompanionList, _database, _tagWithUserList);
          for (final _experienceCompanion in _experienceCompanionList) {
            final _experienceWithRelations = await _insertExperienceAndRelations(
              _database,
              _experienceCompanion,
              _moorUserRickyId,
              _tagWithUserList,
              _objective,
              _reward,
            );
            if (_experienceWithRelations.experience.title.contains(_searchTerm.toLowerCase()) || _experienceWithRelations.experience.title.contains(_searchTerm.toUpperCase())) {
              _experienceList.add(moorExperienceToDomainExperience(_experienceWithRelations));
            }
          }
          final _mainFeedStream = _database.moorExperiencesDao.watchSearchExperiencesByTitle(_searchTerm);
          // Assert
          expectLater(_mainFeedStream.map(_moorExperienceWithRelationsListToExperienceList), emitsInOrder([_experienceList]));
        },
      );
      test(
        "Should emit a List of experiences by their difficulty",
        () async {
          // Arrange
          final _moorUserRicky = domainUserToMoorUserCompanion(_user);
          final _moorUserRickyId = await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _experienceCompanionList = _createExperienceList(_moorUserRickyId, _difficulty);
          final _tagCompanionList = _createTagList(_moorUserRickyId);
          final _tagWithUserList = <MoorTagWithMoorUser>[];
          final _experienceList = <Experience>[];
          // Act
          await _insertTagList(_tagCompanionList, _database, _tagWithUserList);
          for (final _experienceCompanion in _experienceCompanionList) {
            final _experienceWithRelations = await _insertExperienceAndRelations(
              _database,
              _experienceCompanion,
              _moorUserRickyId,
              _tagWithUserList,
              _objective,
              _reward,
            );
            if (_experienceWithRelations.experience.difficulty == _difficulty) {
              _experienceList.add(moorExperienceToDomainExperience(_experienceWithRelations));
            }
          }
          final _mainFeedStream = _database.moorExperiencesDao.watchSearchExperiencesByDifficulty(_difficulty);
          // Assert
          expectLater(_mainFeedStream.map(_moorExperienceWithRelationsListToExperienceList), emitsInOrder([_experienceList]));
        },
      );
      test(
        "Should emit a List of experiences by their tags",
        () async {
          // Arrange
          final _moorUserRicky = domainUserToMoorUserCompanion(_user);
          final _moorUserRickyId = await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _experienceCompanionList = _createExperienceList(_moorUserRickyId, _difficulty);
          final _tagCompanionList = _createTagList(_moorUserRickyId);
          final _tagWithUserList = <MoorTagWithMoorUser>[];
          final _experienceList = <Experience>[];
          // Act
          final _tagIdList = await _insertTagList(_tagCompanionList, _database, _tagWithUserList);
          final _tagId = _tagIdList.first;
          for (final _experienceCompanion in _experienceCompanionList) {
            final _experienceWithRelations = await _insertExperienceAndRelations(
              _database,
              _experienceCompanion,
              _moorUserRickyId,
              _tagWithUserList,
              _objective,
              _reward,
            );
            final _tagsInExperienceIds = _experienceWithRelations.tags.map((_tagWithUser) => _tagWithUser.tag.id).toList();
            if (_tagsInExperienceIds.contains(_tagId)) {
              _experienceList.add(moorExperienceToDomainExperience(_experienceWithRelations));
            }
          }
          final _mainFeedStream = _database.moorExperiencesDao.watchSearchExperiencesByTags([_tagId]);
          // Assert
          expectLater(_mainFeedStream.map(_moorExperienceWithRelationsListToExperienceList), emitsInOrder([_experienceList]));
        },
      );
      test(
        "Should emit a List of experiences by their creator",
        () async {
          // Arrange
          final _moorUserRicky = domainUserToMoorUserCompanion(_user);
          final _moorUserRickyId = await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _experienceCompanionList = _createExperienceList(_moorUserRickyId, _difficulty);
          final _tagCompanionList = _createTagList(_moorUserRickyId);
          final _tagWithUserList = <MoorTagWithMoorUser>[];
          final _experienceList = <Experience>[];
          // Act
          await _insertTagList(_tagCompanionList, _database, _tagWithUserList);
          for (final _experienceCompanion in _experienceCompanionList) {
            final _experienceWithRelations = await _insertExperienceAndRelations(
              _database,
              _experienceCompanion,
              _moorUserRickyId,
              _tagWithUserList,
              _objective,
              _reward,
            );
            if (_experienceWithRelations.creator.id == _moorUserRickyId) {
              _experienceList.add(moorExperienceToDomainExperience(_experienceWithRelations));
            }
          }
          final _mainFeedStream = _database.moorExperiencesDao.watchExperiencesCreated(_moorUserRickyId);
          // Assert
          expectLater(_mainFeedStream.map(_moorExperienceWithRelationsListToExperienceList), emitsInOrder([_experienceList]));
        },
      );
      test(
        "Should emit a List of experiences done by a given user",
        () async {
          // Arrange
          final _moorUserRicky = domainUserToMoorUserCompanion(_user);
          final _moorUserRickyId = await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _experienceCompanionList = _createExperienceList(_moorUserRickyId, _difficulty);
          final _tagCompanionList = _createTagList(_moorUserRickyId);
          final _tagWithUserList = <MoorTagWithMoorUser>[];
          final _experienceList = <Experience>[];
          // Act
          await _insertTagList(_tagCompanionList, _database, _tagWithUserList);
          for (final _experienceCompanion in _experienceCompanionList) {
            final _experienceWithRelations = await _insertExperienceAndRelations(
              _database,
              _experienceCompanion,
              _moorUserRickyId,
              _tagWithUserList,
              _objective,
              _reward,
            );
            final _experienceDone = UserDoneExperiencesCompanion.insert(
              userId: _moorUserRickyId,
              experienceId: _experienceWithRelations.experience.id,
            );
            final _experienceDoneId = await _database.moorExperiencesDao.insertExperienceDone(_experienceDone);
            if (_experienceDoneId == _experienceDone.experienceId.value) {
              _experienceList.add(moorExperienceToDomainExperience(_experienceWithRelations));
            }
          }
          final _mainFeedStream = _database.moorExperiencesDao.watchExperiencesDone(_moorUserRickyId);
          // Assert
          expectLater(_mainFeedStream.map(_moorExperienceWithRelationsListToExperienceList), emitsInOrder([_experienceList]));
        },
      );
      test(
        "Should emit a List of experiences liked by a given user",
        () async {
          // Arrange
          final _moorUserRicky = domainUserToMoorUserCompanion(_user);
          final _moorUserRickyId = await _database.moorUsersDao.insertUser(_moorUserRicky);
          final _experienceCompanionList = _createExperienceList(_moorUserRickyId, _difficulty);
          final _tagCompanionList = _createTagList(_moorUserRickyId);
          final _tagWithUserList = <MoorTagWithMoorUser>[];
          final _experienceList = <Experience>[];
          // Act
          await _insertTagList(_tagCompanionList, _database, _tagWithUserList);
          for (final _experienceCompanion in _experienceCompanionList) {
            final _experienceWithRelations = await _insertExperienceAndRelations(
              _database,
              _experienceCompanion,
              _moorUserRickyId,
              _tagWithUserList,
              _objective,
              _reward,
            );
            final _experienceLiked = UserLikedExperiencesCompanion.insert(
              userId: _moorUserRickyId,
              experienceId: _experienceWithRelations.experience.id,
            );
            final _experienceLikedId = await _database.moorExperiencesDao.insertExperienceLiked(_experienceLiked);
            if (_experienceLikedId == _experienceLiked.experienceId.value) {
              _experienceList.add(moorExperienceToDomainExperience(_experienceWithRelations));
            }
          }
          final _mainFeedStream = _database.moorExperiencesDao.watchExperiencesLiked(_moorUserRickyId);
          // Assert
          expectLater(_mainFeedStream.map(_moorExperienceWithRelationsListToExperienceList), emitsInOrder([_experienceList]));
        },
      );
    },
  );
}

Future<List<int>> _insertTagList(List<MoorTagsCompanion> _tagCompanionList, Database _database, List<MoorTagWithMoorUser> _tagWithUserList) async {
  final _tagIds = <int>[];
  for (final _tag in _tagCompanionList) {
    final _tagId = await _database.moorTagsDao.insertTag(_tag);
    _tagIds.add(_tagId);
    final _moorTag = await _database.moorTagsDao.getTagById(_tagId);
    final _moorUser = await _database.moorUsersDao.getUserById(_moorTag.creatorId);
    _tagWithUserList.add(
      MoorTagWithMoorUser(
        tag: _moorTag,
        creator: _moorUser,
      ),
    );
  }
  return _tagIds;
}

Future<MoorExperienceWithRelations> _insertExperienceAndRelations(
  Database _database,
  MoorExperiencesCompanion _experienceCompanion,
  int _moorUserRickyId,
  List<MoorTagWithMoorUser> _tagWithUserList,
  Objective _objective,
  Reward _reward,
) async {
  final _insertedExperienceId = await _database.moorExperiencesDao.insertExperience(_experienceCompanion);
  final _moorExperience = await _database.moorExperiencesDao.getExperienceById(_insertedExperienceId);
  final _moorUser = await _database.moorUsersDao.getUserById(_moorUserRickyId);
  for (final _tagWithUser in _tagWithUserList) {
    final _experienceTag = ExperienceTagsCompanion.insert(
      experienceId: _insertedExperienceId,
      tagId: _tagWithUser.tag.id,
    );
    await _database.moorTagsDao.insertExperienceTag(_experienceTag);
  }
  final _experienceImageUrlList = [
    ExperienceImageUrlsCompanion.insert(
      imageUrl: "test/test1.jpg",
      experienceId: _insertedExperienceId,
    ),
    ExperienceImageUrlsCompanion.insert(
      imageUrl: "test/test2.jpg",
      experienceId: _insertedExperienceId,
    )
  ];
  for (final _experienceImageUrl in _experienceImageUrlList) {
    await _database.moorExperiencesDao.insertExperienceImage(_experienceImageUrl);
  }
  final _objectiveCompanion = domainObjectiveToMoorObjective(_insertedExperienceId, _objective);
  final _rewardCompanion = domainRewardToMoorReward(_insertedExperienceId, _reward);
  final _objectiveId = await _database.moorObjectivesDao.insertObjective(_objectiveCompanion);
  final _rewardId = await _database.moorRewardsDao.insertReward(_rewardCompanion);
  final _moorObjective = await _database.moorObjectivesDao.getObjectiveById(_objectiveId);
  final _moorReward = await _database.moorRewardsDao.getRewardById(_rewardId);
  final _moorExperienceWithRelations = MoorExperienceWithRelations(
    experience: _moorExperience,
    creator: _moorUser,
    imageUrls: _experienceImageUrlList.map((experienceImageUrl) => experienceImageUrl.imageUrl.value).toList(),
    objectives: [_moorObjective],
    rewards: [_moorReward],
    tags: _tagWithUserList,
  );
  return _moorExperienceWithRelations;
}

List<Experience> _moorExperienceWithRelationsListToExperienceList(List<MoorExperienceWithRelations> _moorExperienceWithRelationsList) {
  return _moorExperienceWithRelationsList
      .map(
        (_moorExperienceWithRelations) => moorExperienceToDomainExperience(_moorExperienceWithRelations),
      )
      .toList();
}

List<MoorTagsCompanion> _createTagList(int _userId) {
  final _moorTagSport = domainTagToMoorTag(getValidTag()).copyWith(
    creatorId: Value(_userId),
  );
  final _moorTagFood = _moorTagSport.copyWith(name: const Value("Food"));
  final _moorTagParty = _moorTagSport.copyWith(name: const Value("Party"));
  final _moorTagSynth = _moorTagSport.copyWith(name: const Value("Synth"));
  final _moorTagJapan = _moorTagSport.copyWith(name: const Value("Japan"));
  final _moorTagTrust = _moorTagSport.copyWith(name: const Value("Trust"));
  final _moorTagVape = _moorTagSport.copyWith(name: const Value("Vape"));
  final _moorTagDIY = _moorTagSport.copyWith(name: const Value("DIY"));
  final _moorTagSkate = _moorTagSport.copyWith(name: const Value("Skate"));
  final _moorTagSnake = _moorTagSport.copyWith(name: const Value("Snake"));
  final _moorTagTacos = _moorTagSport.copyWith(name: const Value("Tacos"));
  final _moorTagList = [
    _moorTagFood,
    _moorTagParty,
    _moorTagSynth,
    _moorTagJapan,
    _moorTagTrust,
    _moorTagVape,
    _moorTagDIY,
    _moorTagSkate,
    _moorTagSnake,
    _moorTagTacos,
  ];
  return _moorTagList;
}

List<MoorExperiencesCompanion> _createExperienceList(int _userId, int _difficulty) {
  final _experienceIpsum = domainExperienceToMoorExperience(getValidExperience()).copyWith(creatorId: Value(_userId));
  final _experienceBro = _experienceIpsum.copyWith(
    title: const Value("Malesuada fames ac ante"),
    description: const Value("Gorby poaching Whistler corduroy freshies stoked sharkbite brain bucket dirtbag."),
  );
  final _experienceHip = _experienceIpsum.copyWith(
    title: const Value("Put a bird on it"),
    difficulty: Value(_difficulty),
    description: const Value("Roof party marfa cronut, adaptogen shabby chic iceland pitchfork fashion axe flannel shoreditch sriracha palo santo slow-carb."),
  );
  final _experienceSpace = _experienceIpsum.copyWith(
    title: const Value("The final frontier"),
    difficulty: Value(_difficulty),
    description: const Value("Many say exploration is part of our destiny, but it’s actually our duty to future generations and their quest to ensure the survival of the human species."),
  );
  final _experienceList = [
    _experienceIpsum,
    _experienceBro,
    _experienceHip,
    _experienceSpace,
  ];
  return _experienceList;
}

Future<int> _insertCreator(Database _database) async {
  final _user = getValidUser();
  final _moorUserRicky = domainUserToMoorUserCompanion(_user).copyWith(
    isLoggedIn: const Value(false),
  );
  final _userId = await _database.moorUsersDao.insertUser(_moorUserRicky);
  return _userId;
}
