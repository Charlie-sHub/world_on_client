import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_achievement.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_comment.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_experience.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_notification.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_tag.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/data/core/moor/converters/domain_achievement_to_moor_achievement.dart';
import 'package:worldon/data/core/moor/converters/domain_comment_to_moor_comment.dart';
import 'package:worldon/data/core/moor/converters/domain_experience_to_moor_experience.dart';
import 'package:worldon/data/core/moor/converters/domain_notification_to_moor_notification.dart';
import 'package:worldon/data/core/moor/converters/domain_objective_to_moor_objective.dart';
import 'package:worldon/data/core/moor/converters/domain_reward_to_moor_reward.dart';
import 'package:worldon/data/core/moor/converters/domain_tag_to_moor_tag.dart';
import 'package:worldon/data/core/moor/converters/domain_user_to_moor_user_companion.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: CoreRepositoryInterface, env: [Environment.dev])
class DevelopmentCoreRepository implements CoreRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();
  final _logger = Logger();

  // final _database = Database.test(VmDatabase.memory());

  @override
  Future<Either<Failure, Unit>> deleteCache() {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  /// Checks if the simulation database has any data in it, if it doesn't then it inserts several entities
  /// Deletes everything in the database in case of error
  Future<void> initializeDatabase() async {
    try {
      final Set<int> _userIds = {};
      final Set<int> _achievementIds = {};
      final Set<int> _tagsIds = {};
      final Set<int> _experiencesIds = {};
      if (await _database.moorUsersDao.countUsers() == 0) {
        _logger.i("Starting the creation of users and their relations");
        await _insertUsers(_userIds);
        _insertFollows(_userIds);
        _insertNotifications(_userIds);
        _logger.i("Created Users and their relations");
      }
      if (await _database.moorAchievementsDao.countAchievements() == 0) {
        _logger.i("Starting the creation of achievements and their relations");
        await _insertAchievements(_userIds, _achievementIds);
        _insertUserAchievements(_userIds, _achievementIds);
        _logger.i("Created Achievements and their relations");
      }
      if (await _database.moorTagsDao.countTags() == 0) {
        _logger.i("Starting the creation of tags and their relations");
        await _insertTags(_userIds, _tagsIds);
        _insertUsersInterests(_userIds, _tagsIds);
        _insertAchievementsTags(_achievementIds, _tagsIds);
        _logger.i("Created Tags and their relations");
      }
      if (await _database.moorExperiencesDao.countExperiences() == 0) {
        _logger.i("Starting the creation of experiences and their relations");
        await _insertExperiences(_userIds, _tagsIds, _experiencesIds);
        await _insertComments(_experiencesIds);
        _insertExperiencesLiked(_userIds, _experiencesIds);
        _insertExperiencesDone(_userIds, _experiencesIds);
        _insertExperiencesToDo(_userIds, _experiencesIds);
        _insertExperiencesTags(_experiencesIds, _tagsIds);
        _logger.i("Created Experiences and their relations");
      }
    } on Exception catch (exception) {
      await _logException(exception);
    }
  }

  void _insertNotifications(Set<int> _userIds) {
    final _notification = domainNotificationToMoorNotification(getValidNotification()).copyWith(
      description: const Value("charlie followed you"),
      receiverId: Value(_userIds.elementAt(0)),
      senderId: Value(_userIds.elementAt(1)),
    );
    final _notificationsList = [
      _notification,
      _notification.copyWith(
        description: const Value("suck_lid unfollowed you"),
        notificationType: const Value(NotificationType.unfollow),
        receiverId: Value(_userIds.elementAt(0)),
        senderId: Value(_userIds.elementAt(2)),
      ),
      _notification.copyWith(
        description: const Value("ricky followed you"),
        receiverId: Value(_userIds.elementAt(1)),
        senderId: Value(_userIds.elementAt(0)),
      ),
    ];
    for (final _notification in _notificationsList) {
      _database.moorNotificationsDao.insertNotification(_notification);
    }
  }

  void _insertAchievementsTags(Set<int> _achievementIds, Set<int> _tagsIds) {
    final _achievementsTagsList = [
      AchievementTagsCompanion.insert(
        achievementId: _achievementIds.elementAt(0),
        tagId: _tagsIds.elementAt(0),
      ),
      AchievementTagsCompanion.insert(
        achievementId: _achievementIds.elementAt(0),
        tagId: _tagsIds.elementAt(1),
      ),
      AchievementTagsCompanion.insert(
        achievementId: _achievementIds.elementAt(0),
        tagId: _tagsIds.elementAt(2),
      ),
      AchievementTagsCompanion.insert(
        achievementId: _achievementIds.elementAt(1),
        tagId: _tagsIds.elementAt(3),
      ),
      AchievementTagsCompanion.insert(
        achievementId: _achievementIds.elementAt(2),
        tagId: _tagsIds.elementAt(4),
      ),
      AchievementTagsCompanion.insert(
        achievementId: _achievementIds.elementAt(3),
        tagId: _tagsIds.elementAt(7),
      ),
      AchievementTagsCompanion.insert(
        achievementId: _achievementIds.elementAt(3),
        tagId: _tagsIds.elementAt(8),
      ),
    ];
    for (final _achievementTag in _achievementsTagsList) {
      _database.moorTagsDao.insertAchievementTag(_achievementTag);
    }
  }

  void _insertExperiencesTags(Set<int> _experiencesIds, Set<int> _tagsIds) {
    final _experiencesTagsList = [
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(0),
        tagId: _tagsIds.elementAt(0),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(0),
        tagId: _tagsIds.elementAt(2),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(0),
        tagId: _tagsIds.elementAt(4),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(1),
        tagId: _tagsIds.elementAt(1),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(1),
        tagId: _tagsIds.elementAt(3),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(1),
        tagId: _tagsIds.elementAt(5),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(2),
        tagId: _tagsIds.elementAt(6),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(2),
        tagId: _tagsIds.elementAt(7),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(3),
        tagId: _tagsIds.elementAt(8),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(4),
        tagId: _tagsIds.elementAt(8),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(4),
        tagId: _tagsIds.elementAt(7),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(5),
        tagId: _tagsIds.elementAt(8),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(5),
        tagId: _tagsIds.elementAt(6),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(5),
        tagId: _tagsIds.elementAt(5),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(5),
        tagId: _tagsIds.elementAt(4),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(6),
        tagId: _tagsIds.elementAt(3),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(6),
        tagId: _tagsIds.elementAt(2),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(6),
        tagId: _tagsIds.elementAt(1),
      ),
      ExperienceTagsCompanion.insert(
        experienceId: _experiencesIds.elementAt(6),
        tagId: _tagsIds.elementAt(0),
      ),
    ];
    for (final _experienceTag in _experiencesTagsList) {
      _database.moorTagsDao.insertExperienceTag(_experienceTag);
    }
  }

  void _insertExperiencesToDo(Set<int> _userIds, Set<int> _experiencesIds) {
    final _experiencesToDoList = [
      UserToDoExperiencesCompanion.insert(
        userId: _userIds.elementAt(0),
        experienceId: _experiencesIds.elementAt(3),
      ),
      UserToDoExperiencesCompanion.insert(
        userId: _userIds.elementAt(1),
        experienceId: _experiencesIds.elementAt(3),
      ),
    ];
    for (final _experienceToDo in _experiencesToDoList) {
      _database.moorExperiencesDao.insertExperienceTodo(_experienceToDo);
    }
  }

  void _insertExperiencesDone(Set<int> _userIds, Set<int> _experiencesIds) {
    final _experiencesDoneList = [
      UserDoneExperiencesCompanion.insert(
        userId: _userIds.elementAt(0),
        experienceId: _experiencesIds.elementAt(0),
      ),
      UserDoneExperiencesCompanion.insert(
        userId: _userIds.elementAt(0),
        experienceId: _experiencesIds.elementAt(1),
      ),
      UserDoneExperiencesCompanion.insert(
        userId: _userIds.elementAt(0),
        experienceId: _experiencesIds.elementAt(2),
      ),
      UserDoneExperiencesCompanion.insert(
        userId: _userIds.elementAt(1),
        experienceId: _experiencesIds.elementAt(0),
      ),
      UserDoneExperiencesCompanion.insert(
        userId: _userIds.elementAt(1),
        experienceId: _experiencesIds.elementAt(1),
      ),
      UserDoneExperiencesCompanion.insert(
        userId: _userIds.elementAt(1),
        experienceId: _experiencesIds.elementAt(2),
      ),
    ];
    for (final _experienceDone in _experiencesDoneList) {
      _database.moorExperiencesDao.insertExperienceDone(_experienceDone);
    }
  }

  void _insertExperiencesLiked(Set<int> _userIds, Set<int> _experiencesIds) {
    final _experiencesLikedList = [
      UserLikedExperiencesCompanion.insert(
        userId: _userIds.elementAt(0),
        experienceId: _experiencesIds.elementAt(0),
      ),
      UserLikedExperiencesCompanion.insert(
        userId: _userIds.elementAt(0),
        experienceId: _experiencesIds.elementAt(1),
      ),
      UserLikedExperiencesCompanion.insert(
        userId: _userIds.elementAt(1),
        experienceId: _experiencesIds.elementAt(1),
      ),
      UserLikedExperiencesCompanion.insert(
        userId: _userIds.elementAt(0),
        experienceId: _experiencesIds.elementAt(2),
      ),
    ];
    for (final _experienceLiked in _experiencesLikedList) {
      _database.moorExperiencesDao.insertExperienceLiked(_experienceLiked);
    }
  }

  void _insertUserAchievements(Set<int> _userIds, Set<int> _achievementIds) {
    final _userAchievements = [
      UserAchievementsCompanion.insert(
        userId: _userIds.elementAt(0),
        achievementId: _achievementIds.elementAt(0),
      ),
      UserAchievementsCompanion.insert(
        userId: _userIds.elementAt(0),
        achievementId: _achievementIds.elementAt(1),
      ),
      UserAchievementsCompanion.insert(
        userId: _userIds.elementAt(0),
        achievementId: _achievementIds.elementAt(2),
      ),
      UserAchievementsCompanion.insert(
        userId: _userIds.elementAt(1),
        achievementId: _achievementIds.elementAt(0),
      ),
      UserAchievementsCompanion.insert(
        userId: _userIds.elementAt(1),
        achievementId: _achievementIds.elementAt(1),
      ),
      UserAchievementsCompanion.insert(
        userId: _userIds.elementAt(1),
        achievementId: _achievementIds.elementAt(2),
      ),
      UserAchievementsCompanion.insert(
        userId: _userIds.elementAt(1),
        achievementId: _achievementIds.elementAt(3),
      ),
    ];
    for (final _userAchievement in _userAchievements) {
      _database.moorAchievementsDao.insertUserAchievement(_userAchievement);
    }
  }

  void _insertUsersInterests(Set<int> _userIds, Set<int> _tagsIds) {
    final _userInterests = [
      UserInterestsCompanion.insert(
        userId: _userIds.elementAt(0),
        tagId: _tagsIds.elementAt(0),
      ),
      UserInterestsCompanion.insert(
        userId: _userIds.elementAt(0),
        tagId: _tagsIds.elementAt(1),
      ),
      UserInterestsCompanion.insert(
        userId: _userIds.elementAt(0),
        tagId: _tagsIds.elementAt(2),
      ),
      UserInterestsCompanion.insert(
        userId: _userIds.elementAt(0),
        tagId: _tagsIds.elementAt(3),
      ),
      UserInterestsCompanion.insert(
        userId: _userIds.elementAt(0),
        tagId: _tagsIds.elementAt(4),
      ),
      UserInterestsCompanion.insert(
        userId: _userIds.elementAt(0),
        tagId: _tagsIds.elementAt(5),
      ),
      UserInterestsCompanion.insert(
        userId: _userIds.elementAt(0),
        tagId: _tagsIds.elementAt(6),
      ),
      UserInterestsCompanion.insert(
        userId: _userIds.elementAt(1),
        tagId: _tagsIds.elementAt(0),
      ),
      UserInterestsCompanion.insert(
        userId: _userIds.elementAt(1),
        tagId: _tagsIds.elementAt(2),
      ),
      UserInterestsCompanion.insert(
        userId: _userIds.elementAt(1),
        tagId: _tagsIds.elementAt(4),
      ),
      UserInterestsCompanion.insert(
        userId: _userIds.elementAt(1),
        tagId: _tagsIds.elementAt(6),
      ),
      UserInterestsCompanion.insert(
        userId: _userIds.elementAt(1),
        tagId: _tagsIds.elementAt(8),
      ),
    ];
    for (final _userInterest in _userInterests) {
      _database.moorTagsDao.insertUserInterest(_userInterest);
    }
  }

  void _insertFollows(Set<int> _userIds) {
    final _userFollowRelationList = [
      UserFollowRelationsCompanion.insert(
        followedId: _userIds.elementAt(0),
        followingId: _userIds.elementAt(1),
      ),
      UserFollowRelationsCompanion.insert(
        followedId: _userIds.elementAt(0),
        followingId: _userIds.elementAt(2),
      ),
      UserFollowRelationsCompanion.insert(
        followedId: _userIds.elementAt(0),
        followingId: _userIds.elementAt(3),
      ),
      UserFollowRelationsCompanion.insert(
        followedId: _userIds.elementAt(1),
        followingId: _userIds.elementAt(0),
      ),
      UserFollowRelationsCompanion.insert(
        followedId: _userIds.elementAt(1),
        followingId: _userIds.elementAt(2),
      ),
      UserFollowRelationsCompanion.insert(
        followedId: _userIds.elementAt(1),
        followingId: _userIds.elementAt(3),
      ),
      UserFollowRelationsCompanion.insert(
        followedId: _userIds.elementAt(2),
        followingId: _userIds.elementAt(0),
      ),
      UserFollowRelationsCompanion.insert(
        followedId: _userIds.elementAt(2),
        followingId: _userIds.elementAt(1),
      ),
    ];
    for (final _userFollowRelation in _userFollowRelationList) {
      _database.moorUsersDao.followUser(_userFollowRelation);
    }
  }

  Future _insertComments(Set<int> _experiencesIds) async {
    final _comment = getValidComment();
    final _moorCommentIpsum = domainCommentToMoorComment(
      _comment,
      _experiencesIds.first,
    );
    final _moorCommentBro = _moorCommentIpsum.copyWith(
      content: const Value("Chain suck lid huck wheels titanium face plant slash greasy shreddin grind derailleur rigid brain bucket chain ring groomer"),
    );
    final _moorCommentHip = _moorCommentIpsum.copyWith(
      experienceId: Value(_experiencesIds.last),
      content: const Value("Meggings vegan kickstarter hot chicken celiac tofu godard echo park"),
    );
    final _commentList = [
      _moorCommentIpsum,
      _moorCommentBro,
      _moorCommentHip,
    ];
    for (final _comment in _commentList) {
      _database.moorCommentsDao.insertComment(_comment);
    }
  }

  Future _insertExperiences(Set<int> _userIds, Set<int> _tagsIds, Set<int> _experiencesIds) async {
    final _experienceIpsum = getValidExperience();
    final _validUser = getValidUser();
    final _experienceBro = _experienceIpsum.copyWith(
      title: Name("Road rash shred"),
      description: EntityDescription("Gorby poaching Whistler corduroy freshies stoked sharkbite brain bucket dirtbag."),
      creator: _validUser.copyWith(
        id: _userIds.first,
      ),
    );
    final _experienceHip = _experienceIpsum.copyWith(
      title: Name("Put a bird on it"),
      description: EntityDescription("Roof party marfa cronut, adaptogen shabby chic iceland pitchfork fashion axe flannel shoreditch sriracha palo santo slow-carb."),
      creator: _validUser.copyWith(
        id: _userIds.elementAt(1),
      ),
    );
    final _experienceSpace = _experienceIpsum.copyWith(
      title: Name("The final frontier"),
      description: EntityDescription("Many say exploration is part of our destiny, but it’s actually our duty to future generations and their quest to ensure the survival of the human species."),
      creator: _validUser.copyWith(
        id: _userIds.elementAt(2),
      ),
    );
    final _experiencePostModern = _experienceIpsum.copyWith(
      title: Name("Consensuses of collapse"),
      description: EntityDescription("In a sense, Lyotard suggests the use of Foucaultist power relations to read and analyse society. "
          "Several deappropriations concerning conceptual subcapitalist theory exist."),
      creator: _validUser.copyWith(
        id: _userIds.elementAt(3),
      ),
    );
    final _experienceCat = _experienceIpsum.copyWith(
      title: Name("Human give me attention meow"),
      description: EntityDescription("Meowzer flee in terror at cucumber discovered on floor sit on human purr like a car engine oh yes"),
      creator: _validUser.copyWith(
        id: _userIds.elementAt(2),
      ),
    );
    final _experienceCorporate = _experienceIpsum.copyWith(
      title: Name("Leverage agile frameworks"),
      description: EntityDescription("Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. "
        "Override the digital divide with additional clickthroughs from DevOps."),
      creator: _validUser.copyWith(
        id: _userIds.elementAt(1),
      ),
    );
    final _experienceList = [
      _experienceIpsum,
      _experienceBro,
      _experienceHip,
      _experienceSpace,
      _experiencePostModern,
      _experienceCat,
      _experienceCorporate,
    ];
    for (final _experience in _experienceList) {
      _experiencesIds.add(await _insertExperience(_experience));
    }
  }

  Future<int> _insertExperience(Experience experience) async {
    final _moorExperience = domainExperienceToMoorExperience(experience);
    final _experienceId = await _database.moorExperiencesDao.insertExperience(_moorExperience);
    final _moorObjectives = experience.objectives
      .getOrCrash()
      .asSet()
      .map(
        (_objective) =>
        domainObjectiveToMoorObjective(
          _experienceId,
          _objective,
        ),
    )
      .toSet();
    final _moorRewards = experience.rewards
      .getOrCrash()
      .asSet()
      .map(
        (_reward) =>
        domainRewardToMoorReward(
          _experienceId,
          _reward,
        ),
    )
      .toSet();
    experience.imageAssetsOption.fold(
      // This should never happen
      // If it does an exception should be thrown or something
        () => _logger.i("The experience ${experience.title} imageAssetOption field is none()"),
        (imageAssetList) async {
        for (final _imageAsset in imageAssetList) {
          final _experienceImage = ExperienceImageUrlsCompanion.insert(
            experienceId: _experienceId,
            // TODO: Figure out a way to select multiple file images
            // just saving the name is useless for this
            imageUrl: _imageAsset.name,
          );
          await _database.moorExperiencesDao.insertExperienceImage(_experienceImage);
        }
      },
    );
    for (final _objective in _moorObjectives) {
      await _database.moorObjectivesDao.insertObjective(_objective);
    }
    for (final _reward in _moorRewards) {
      await _database.moorRewardsDao.insertReward(_reward);
    }
    return _experienceId;
  }

  Future _insertTags(Set<int> _userIds, Set<int> _tagsIds) async {
    final _tag = getValidTag();
    final _moorTagSport = domainTagToMoorTag(_tag).copyWith(
      creatorId: Value(_userIds.first),
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
    for (final _moorTag in _moorTagList) {
      final _insertedTagId = await _database.moorTagsDao.insertTag(_moorTag);
      _tagsIds.add(_insertedTagId);
    }
  }

  Future _insertAchievements(Set<int> _userIds, Set<int> _achievementIds) async {
    final _achievement = getValidAchievement();
    final _moorAchievementHardest = domainAchievementToMoorAchievement(_achievement).copyWith(
      creatorId: Value(_userIds.first),
    );
    final _moorAchievementBest = _moorAchievementHardest.copyWith(
      name: const Value("The Best"),
      description: const Value("You're the best"),
    );
    final _moorAchievementFastest = _moorAchievementHardest.copyWith(
      creatorId: Value(_userIds.last),
      name: const Value("The Fastest"),
      description: const Value("You're the fastest"),
    );
    final _moorAchievementStrongest = _moorAchievementHardest.copyWith(
      creatorId: Value(_userIds.last),
      name: const Value("The Strongest"),
      description: const Value("You're the strongest"),
    );
    final _moorAchievementList = [
      _moorAchievementHardest,
      _moorAchievementBest,
      _moorAchievementFastest,
      _moorAchievementStrongest,
    ];
    for (final _moorAchievement in _moorAchievementList) {
      final _insertedAchievementId = await _database.moorAchievementsDao.insertAchievement(_moorAchievement);
      _achievementIds.add(_insertedAchievementId);
    }
  }

  Future _insertUsers(Set<int> _userIds) async {
    final _user = getValidUser();
    final _moorUserRicky = domainUserToMoorUserCompanion(_user).copyWith(
      isLoggedIn: const Value(false),
    );
    final _moorUserCharlie = _moorUserRicky.copyWith(
      name: const Value("Carlos"),
      username: const Value("charlie"),
      email: const Value("wew@lad.lel"),
      description: const Value("Why even live?"),
      level: const Value(90),
    );
    final _moorUserBro = _moorUserRicky.copyWith(
      name: const Value("Bro"),
      username: const Value("suck_lid"),
      email: const Value("chicken@huck.moguls"),
      description: const Value("Snake bite nose press flow couloir, poaching freshies OTB ride"),
      level: const Value(66),
    );
    final _moorUserHipster = _moorUserRicky.copyWith(
      name: const Value("I'm baby"),
      username: const Value("stumptown"),
      email: const Value("paleo@pork.belly"),
      description: const Value("Vinyl succulents poutine brunch twee, gentrify cred listicle affogato four dollar toast."),
      level: const Value(32),
    );
    final _moorUserList = [
      _moorUserRicky,
      _moorUserCharlie,
      _moorUserBro,
      _moorUserHipster,
    ];
    for (final _moorUser in _moorUserList) {
      final _insertedUserId = await _database.moorUsersDao.insertUser(_moorUser);
      _userIds.add(_insertedUserId);
    }
  }

  Future _logException(exception) async {
    _logger.e("Moor Database error: $exception");
    _logger.i("DELETING RELATIONS");
    final _deletedAchievementsTagsAmount = await _database.moorTagsDao.deleteAllAchievementsTags();
    _logger.i("Deleted  $_deletedAchievementsTagsAmount achievements tag(s)");
    final _deletedUserAchievementsAmount = await _database.moorAchievementsDao.deleteAllUsersAchievements();
    _logger.i("Deleted  $_deletedUserAchievementsAmount user achievement(s)");
    final _deletedExperienceImagesUrlsAmount = await _database.moorExperiencesDao.deleteAllExperiencesImagesUrls();
    _logger.i("Deleted  $_deletedExperienceImagesUrlsAmount experiences image url(s)");
    final _deletedExperiencesTagsAmount = await _database.moorTagsDao.deleteAllExperiencesTags();
    _logger.i("Deleted  $_deletedExperiencesTagsAmount experiences tag(s)");
    final _deletedExperiencesToDoAmount = await _database.moorExperiencesDao.deleteAllUsersToDoExperiences();
    _logger.i("Deleted  $_deletedExperiencesToDoAmount experiences to do");
    final _deletedExperiencesLikedAmount = await _database.moorExperiencesDao.deleteAllUsersLikedExperiences();
    _logger.i("Deleted  $_deletedExperiencesLikedAmount experiences liked");
    final _deletedExperiencesDoneAmount = await _database.moorExperiencesDao.deleteAllUsersDoneExperiences();
    _logger.i("Deleted  $_deletedExperiencesDoneAmount experiences liked");
    final _deletedUserInterestsAmount = await _database.moorTagsDao.deleteAllUsersInterests();
    _logger.i("Deleted  $_deletedUserInterestsAmount user interest(s)");
    final _deletedUsersFollowRelationsAmount = await _database.moorUsersDao.deleteAllUsersFollowRelations();
    _logger.i("Deleted  $_deletedUsersFollowRelationsAmount follow relation(s)");
    final _deletedUsersBlockRelationsAmount = await _database.moorUsersDao.deleteAllUsersBlockRelations();
    _logger.i("Deleted  $_deletedUsersBlockRelationsAmount block relation(s)");
    _logger.i("DELETING ENTITIES");
    final _deletedAchievementsAmount = await _database.moorAchievementsDao.deleteAllAchievements();
    _logger.i("Deleted  $_deletedAchievementsAmount achievement(s)");
    final _deletedTagsAmount = await _database.moorTagsDao.deleteAllTags();
    _logger.i("Deleted  $_deletedTagsAmount tag(s)");
    final _deletedCommentsAmount = await _database.moorCommentsDao.deleteAllComments();
    _logger.i("Deleted  $_deletedCommentsAmount comment(s)");
    final _deletedNotificationsAmount = await _database.moorNotificationsDao.deleteAllNotifications();
    _logger.i("Deleted  $_deletedNotificationsAmount notification(s)");
    final _deletedObjectivesAmount = await _database.moorObjectivesDao.deleteAllObjectives();
    _logger.i("Deleted  $_deletedObjectivesAmount objective(s)");
    final _deletedOptionsAmount = await _database.moorOptionsDao.deleteAllOptions();
    _logger.i("Deleted  $_deletedOptionsAmount option(s)");
    final _deletedRewardsAmount = await _database.moorRewardsDao.deleteAllRewards();
    _logger.i("Deleted  $_deletedRewardsAmount reward(s)");
    final _deletedExperiencesAmount = await _database.moorExperiencesDao.deleteAllExperiences();
    _logger.i("Deleted  $_deletedExperiencesAmount experience(s)");
    final _deletedUsersAmount = await _database.moorUsersDao.deleteAllUsers();
    _logger.i("Deleted  $_deletedUsersAmount user(s)");
  }
}
