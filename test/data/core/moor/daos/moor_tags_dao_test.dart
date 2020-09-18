import 'package:flutter_test/flutter_test.dart';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_achievement.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/moor/converters/domain_achievement_to_moor_achievement.dart';
import 'package:worldon/data/core/moor/converters/domain_experience_to_moor_experience.dart';
import 'package:worldon/data/core/moor/converters/domain_tag_to_moor_tag.dart';
import 'package:worldon/data/core/moor/converters/domain_user_to_moor_user_companion.dart';
import 'package:worldon/data/core/moor/converters/moor_tag_to_domain_tag.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';

import '../../../../test_descriptions.dart';

void main() {
  Database _database;
  setUp(
    () async {
      _database = Database.test(VmDatabase.memory());
    },
  );
  tearDown(
    () async {
      await _database.close();
    },
  );
  final _tag = getValidTag();
  test(
    "Should insert _moorTagFood",
    () async {
      // Arrange
      final _userId = await _insertCreator(_database);
      final _moorTagSport = domainTagToMoorTag(_tag).copyWith(
        creatorId: Value(_userId),
      );
      // Act
      final _insertedTagId = await _database.moorTagsDao.insertTag(_moorTagSport);
      final _moorTag = await _database.moorTagsDao.getTagById(_insertedTagId);
      // Assert
      expect(_moorTag.toCompanion(true), _moorTagSport.copyWith(id: Value(_insertedTagId)));
    },
  );
  test(
    "Should return the count of the tags inserted",
    () async {
      // Arrange
      final _userId = await _insertCreator(_database);
      final _moorTagList = _createTagList(_tag, _userId);
      // Act
      for (final _moorTag in _moorTagList) {
        await _database.moorTagsDao.insertTag(_moorTag);
      }
      final _tagCount = await _database.moorTagsDao.countTags();
      // Assert
      expect(_tagCount, _moorTagList.length);
    },
  );
  group(
    "Testing relations",
    () {
      test(
        "Should insert a user interest",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorTagSport = domainTagToMoorTag(_tag).copyWith(
            creatorId: Value(_userId),
          );
          // Act
          final _insertedTagId = await _database.moorTagsDao.insertTag(_moorTagSport);
          final _userInterest = UserInterestsCompanion.insert(
            userId: _userId,
            tagId: _insertedTagId,
          );
          final _userInterestId = await _database.moorTagsDao.insertUserInterest(_userInterest);
          // Assert
          expect(_userInterestId, _userId);
        },
      );
      test(
        "Should insert a experience tag relation",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorTagSport = domainTagToMoorTag(_tag).copyWith(
            creatorId: Value(_userId),
          );
          final _experience = domainExperienceToMoorExperience(getValidExperience()).copyWith(creatorId: Value(_userId));
          // Act
          final _insertedTagId = await _database.moorTagsDao.insertTag(_moorTagSport);
          final _experienceId = await _database.moorExperiencesDao.insertExperience(_experience);
          final _experienceTag = ExperienceTagsCompanion.insert(
            experienceId: _experienceId,
            tagId: _insertedTagId,
          );
          final _experienceTagId = await _database.moorTagsDao.insertExperienceTag(_experienceTag);
          // Assert
          expect(_experienceTagId, _experienceId);
        },
      );
      test(
        "Should insert a achievement tag relation",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorTagSport = domainTagToMoorTag(_tag).copyWith(
            creatorId: Value(_userId),
          );
          final _achievement = domainAchievementToMoorAchievement(getValidAchievement()).copyWith(creatorId: Value(_userId));
          // Act
          final _insertedTagId = await _database.moorTagsDao.insertTag(_moorTagSport);
          final _achievementId = await _database.moorAchievementsDao.insertAchievement(_achievement);
          final _achievementTag = AchievementTagsCompanion.insert(
            achievementId: _achievementId,
            tagId: _insertedTagId,
          );
          final _experienceTagId = await _database.moorTagsDao.insertAchievementTag(_achievementTag);
          // Assert
          expect(_experienceTagId, _achievementId);
        },
      );
    },
  );
  group(
    TestDescription.groupDeletion,
    () {
      test(
        "Should delete a tag",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorTagSport = domainTagToMoorTag(_tag).copyWith(
            creatorId: Value(_userId),
          );
          // Act
          final _insertedTagId = await _database.moorTagsDao.insertTag(_moorTagSport);
          final _moorTag = await _database.moorTagsDao.getTagById(_insertedTagId);
          final _deletedAmount = await _database.moorTagsDao.removeTag(_moorTag);
          // Assert
          expect(_deletedAmount, 1);
        },
      );
      test(
        "Should delete all tags",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorTagList = _createTagList(_tag, _userId);
          // Act
          for (final _moorTag in _moorTagList) {
            await _database.moorTagsDao.insertTag(_moorTag);
          }
          final _tagsDeletedAmount = await _database.moorTagsDao.deleteAllTags();
          // Assert
          expect(_tagsDeletedAmount, _moorTagList.length);
        },
      );
      test(
        "Should delete a interest of a user",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorTagList = _createTagList(_tag, _userId);
          final _tagIds = <int>[];
          // Act
          for (final _moorTag in _moorTagList) {
            _tagIds.add(await _database.moorTagsDao.insertTag(_moorTag));
          }
          final _userInterest = UserInterestsCompanion.insert(
            userId: _userId,
            tagId: _tagIds.first,
          );
          await _database.moorTagsDao.insertUserInterest(_userInterest);
          final _interestsDeletedAmount = await _database.moorTagsDao.removeUserInterest(_userInterest);
          // Assert
          expect(_interestsDeletedAmount, 1);
        },
      );
      test(
        "Should delete all interests of a user",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorTagList = _createTagList(_tag, _userId);
          final _interestIds = [];
          // Act
          for (final _moorTag in _moorTagList) {
            final _insertedTagId = await _database.moorTagsDao.insertTag(_moorTag);
            final _userInterest = UserInterestsCompanion.insert(
              userId: _userId,
              tagId: _insertedTagId,
            );
            _interestIds.add(await _database.moorTagsDao.insertUserInterest(_userInterest));
          }
          final _interestsDeletedAmount = await _database.moorTagsDao.deleteUserInterests(_userId);
          // Assert
          expect(_interestsDeletedAmount, _interestIds.length);
        },
      );
      test(
        "Should delete all interests of all users",
          () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _user = getValidUser();
          final _moorUserCharlie = domainUserToMoorUserCompanion(_user).copyWith(
            username: const Value("charlie"),
            email: const Value("wew@lad.lel"),
            isLoggedIn: const Value(false),
          );
          final _otherUserId = await _database.moorUsersDao.insertUser(_moorUserCharlie);
          final _moorTagList = _createTagList(_tag, _userId);
          final _interestIds = [];
          // Act
          for (final _moorTag in _moorTagList) {
            final _insertedTagId = await _database.moorTagsDao.insertTag(_moorTag);
            final _userInterest = UserInterestsCompanion.insert(
              userId: _userId,
              tagId: _insertedTagId,
            );
            final _otherUserInterest = UserInterestsCompanion.insert(
              userId: _otherUserId,
              tagId: _insertedTagId,
            );
            _interestIds.add(await _database.moorTagsDao.insertUserInterest(_userInterest));
            _interestIds.add(await _database.moorTagsDao.insertUserInterest(_otherUserInterest));
          }
          final _interestsDeletedAmount = await _database.moorTagsDao.deleteAllUsersInterests();
          // Assert
          expect(_interestsDeletedAmount, _interestIds.length);
        },
      );
      test(
        "Should delete all tags of all experiences",
          () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _experience = domainExperienceToMoorExperience(getValidExperience()).copyWith(creatorId: Value(_userId));
          final _otherExperience = _experience.copyWith(title: const Value("Test"));
          final _moorTagList = _createTagList(_tag, _userId);
          final _experienceTagsIds = [];
          // Act
          final _experienceId = await _database.moorExperiencesDao.insertExperience(_experience);
          final _otherExperienceId = await _database.moorExperiencesDao.insertExperience(_otherExperience);
          for (final _moorTag in _moorTagList) {
            final _insertedTagId = await _database.moorTagsDao.insertTag(_moorTag);
            final _experienceTag = ExperienceTagsCompanion.insert(
              experienceId: _experienceId,
              tagId: _insertedTagId,
            );
            final _otherExperienceTag = ExperienceTagsCompanion.insert(
              experienceId: _otherExperienceId,
              tagId: _insertedTagId,
            );
            _experienceTagsIds.add(await _database.moorTagsDao.insertExperienceTag(_experienceTag));
            _experienceTagsIds.add(await _database.moorTagsDao.insertExperienceTag(_otherExperienceTag));
          }
          final _experienceTagsDeletedAmount = await _database.moorTagsDao.deleteAllExperiencesTags();
          // Assert
          expect(_experienceTagsDeletedAmount, _experienceTagsIds.length);
        },
      );
      test(
        "Should delete all tag achievement relations",
          () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorAchievement = domainAchievementToMoorAchievement(getValidAchievement()).copyWith(creatorId: Value(_userId));
          final _moorTag = domainTagToMoorTag(getValidTag()).copyWith(creatorId: Value(_userId));
          // Act
          final _achievementId = await _database.moorAchievementsDao.insertAchievement(_moorAchievement);
          final _tagId = await _database.moorTagsDao.insertTag(_moorTag);
          final _tagAchievementList = [
            AchievementTagsCompanion.insert(
              tagId: _tagId,
              achievementId: _achievementId,
            ),
          ];
          for (final _tagAchievement in _tagAchievementList) {
            await _database.moorTagsDao.insertAchievementTag(_tagAchievement);
          }
          final _tagAchievementsDeletedCount = await _database.moorTagsDao.deleteAllAchievementsTags();
          // Assert
          expect(_tagAchievementsDeletedCount, _tagAchievementList.length);
        },
      );
    },
  );
  group(
    TestDescription.groupStreams,
    () {
      test(
        "Should emit a stream of lists of tags by their name",
        () async {
          // Arrange
          const _searchTerm = "f";
          final _searchResults = <Tag>[];
          final _userId = await _insertCreator(_database);
          final _tagList = _createTagList(_tag, _userId);
          // Act
          for (final _moorTag in _tagList) {
            final _id = await _database.moorTagsDao.insertTag(_moorTag);
            if (_moorTag.name.value.contains(_searchTerm.toLowerCase()) || _moorTag.name.value.contains(_searchTerm.toUpperCase())) {
              final _tagInserted = await _database.moorTagsDao.getTagById(_id);
              _searchResults.add(
                moorTagToDomainTag(_tagInserted),
              );
            }
          }
          final _tagStream = _database.moorTagsDao.watchSearchTagsByName(_searchTerm);
          // Assert
          expectLater(
            _tagStream.map(
              (_moorTagWithMoorUserList) => _moorTagWithMoorUserList
                  .map(
                    (_moorTagWithMoorUser) => moorTagToDomainTag(_moorTagWithMoorUser),
                  )
                  .toList(),
            ),
            emitsInOrder([_searchResults]),
          );
        },
      );
      test(
        "Should emit a stream of lists of tags interested by an user",
        () async {
          // Arrange
          final _userId = await _insertCreator(_database);
          final _moorTagList = _createTagList(_tag, _userId);
          final _moorTagAfterInsertList = <Tag>[];
          // Act
          for (final _moorTag in _moorTagList) {
            final _insertedTagId = await _database.moorTagsDao.insertTag(_moorTag);
            final _userInterest = UserInterestsCompanion.insert(
              userId: _userId,
              tagId: _insertedTagId,
            );
            final _tagInserted = await _database.moorTagsDao.getTagById(_insertedTagId);
            _moorTagAfterInsertList.add(
              moorTagToDomainTag(_tagInserted),
            );
            await _database.moorTagsDao.insertUserInterest(_userInterest);
          }
          final _tagListStream = _database.moorTagsDao.watchUserInterests(_userId);
          // Assert
          expectLater(
            _tagListStream.map(
              (_moorTagWithUserList) => _moorTagWithUserList
                  .map(
                    (_moorTagWithUser) => moorTagToDomainTag(_moorTagWithUser),
                  )
                  .toList(),
            ),
            emitsInOrder([_moorTagAfterInsertList]),
          );
        },
      );
    },
  );
}

List<MoorTagsCompanion> _createTagList(Tag _tag, int _userId) {
  final _moorTagSport = domainTagToMoorTag(_tag).copyWith(
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

Future<int> _insertCreator(Database _database) async {
  final _user = getValidUser();
  final _moorUserRicky = domainUserToMoorUserCompanion(_user).copyWith(
    isLoggedIn: const Value(false),
  );
  final _userId = await _database.moorUsersDao.insertUser(_moorUserRicky);
  return _userId;
}
