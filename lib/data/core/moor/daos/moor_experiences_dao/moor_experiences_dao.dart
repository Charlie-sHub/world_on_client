import 'package:moor/moor.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import '../../tables/moor_experiences.dart';
import '../../tables/moor_objectives.dart';
import '../../tables/moor_rewards.dart';
import '../../tables/moor_tags.dart';
import '../../tables/moor_users.dart';
import 'moor_experience_with_relations.dart';

part 'moor_experiences_dao.g.dart';

@UseDao(
  tables: [
    MoorExperiences,
    MoorUsers,
    MoorObjectives,
    MoorRewards,
    MoorTags,
    UserDoneExperiences,
    UserLikedExperiences,
    UserToDoExperiences,
    UserFollowRelations,
    ExperienceImageUrls,
    ExperienceTags,
  ],
)
class MoorExperiencesDao extends DatabaseAccessor<Database> with _$MoorExperiencesDaoMixin {
  MoorExperiencesDao(Database db) : super(db);

  Future<int> insertExperience(Insertable<MoorExperience> experience) => into(moorExperiences).insert(experience);

  Future updateExperience(Insertable<MoorExperience> experience) => update(moorExperiences).replace(experience);

  Future<int> insertExperienceTodo(Insertable<UserToDoExperience> userToDoExperience) => into(userToDoExperiences).insert(
        userToDoExperience,
        mode: InsertMode.replace,
      );

  Future<int> insertExperienceImage(Insertable<ExperienceImageUrl> imageUrl) => into(experienceImageUrls).insert(
        imageUrl,
        mode: InsertMode.replace,
      );

  Future<int> removeExperienceTodo(Insertable<UserToDoExperience> userToDoExperience) => delete(userToDoExperiences).delete(userToDoExperience);

  Future<int> insertExperienceDone(Insertable<UserDoneExperience> userDoneExperience) => into(userDoneExperiences).insert(
        userDoneExperience,
        mode: InsertMode.replace,
      );

  Future<int> insertExperienceLiked(Insertable<UserLikedExperience> userLikedExperience) => into(userLikedExperiences).insert(
        userLikedExperience,
        mode: InsertMode.replace,
      );

  Future<int> removeExperienceLiked(Insertable<UserLikedExperience> userLikedExperience) => delete(userLikedExperiences).delete(userLikedExperience);

  Future<int> deleteAllExperiences() => delete(moorExperiences).go();

  Future<int> deleteAllExperiencesImagesUrls() => delete(experienceImageUrls).go();

  Future<int> deleteAllUsersLikedExperiences() => delete(userLikedExperiences).go();

  Future<int> deleteAllUsersDoneExperiences() => delete(userDoneExperiences).go();

  Future<int> deleteAllUsersToDoExperiences() => delete(userToDoExperiences).go();

  Future<int> countExperiences() async {
    final _moorExperienceList = await select(moorExperiences).get();
    return _moorExperienceList.length;
  }

  Future<MoorExperience> getExperienceById(int id) async {
    final _experienceQuery = select(moorExperiences)..where((_experiences) => _experiences.id.equals(id));
    return _experienceQuery.getSingle();
  }

  Stream<List<MoorExperienceWithRelations>> watchSearchExperiencesByTitle(String title) async* {
    final _whereExpression = moorExperiences.title.contains(title);
    yield* _getExperienceWithRelationsStream(_whereExpression);
  }

  Stream<List<MoorExperienceWithRelations>> watchSearchExperiencesByDifficulty(int difficulty) async* {
    final _whereExpression = moorExperiences.difficulty.equals(difficulty);
    yield* _getExperienceWithRelationsStream(_whereExpression);
  }

  Stream<List<MoorExperienceWithRelations>> watchSearchExperiencesByTags(List<int> tagIds) async* {
    final _experiencesByTagsQuery = select(experienceTags)
      ..where(
        (experienceTags) => experienceTags.tagId.isIn(tagIds),
      );
    final _experienceTagList = await _experiencesByTagsQuery.get();
    final _experienceIds = _experienceTagList.map((_experienceTag) => _experienceTag.experienceId).toSet();
    final _whereExpression = moorExperiences.id.isIn(_experienceIds);
    yield* _getExperienceWithRelationsStream(_whereExpression);
  }

  Stream<List<MoorExperienceWithRelations>> watchExperiencesCreated(int userId) async* {
    final _whereExpression = moorExperiences.creatorId.equals(userId);
    yield* _getExperienceWithRelationsStream(_whereExpression);
  }

  Stream<List<MoorExperienceWithRelations>> watchFeed(int userId) async* {
    final _followedUsersQuery = select(userFollowRelations)
      ..where(
        (_userFollowRelations) => _userFollowRelations.followingId.equals(userId),
      );
    final _followedIdsStream = _followedUsersQuery.watch().map(
          (_userFollowRelationList) => _userFollowRelationList
              .map(
                (_userFollowRelation) => _userFollowRelation.followedId,
              )
              .toList(),
        );
    final _experiencesWithCreatorJoinStream = _createExperienceWithCreatorsJoinStream();
    final _experiencesWithTagsJoinStream = _createExperiencesWithTagsJoinStream();
    final _tagsListStream = select(moorTags).watch();
    final _objectivesStream = select(moorObjectives).watch();
    final _rewardsStream = select(moorRewards).watch();
    final _imageUrlsStream = select(experienceImageUrls).watch();
    yield* Rx.combineLatest7(
      _followedIdsStream,
      _experiencesWithCreatorJoinStream,
      _experiencesWithTagsJoinStream,
      _objectivesStream,
      _rewardsStream,
      _imageUrlsStream,
      _tagsListStream,
      (
        List<int> _followedIds,
        List<TypedResult> _experiencesWithCreator,
        List<TypedResult> _experiencesWithTags,
        List<MoorObjective> _objectiveList,
        List<MoorReward> _rewardList,
        List<ExperienceImageUrl> _imageUrlList,
        List<MoorTag> _tags,
      ) {
        _experiencesWithCreator.removeWhere(
          (_row) => !_followedIds.contains(_row.readTable(moorExperiences).creatorId),
        );
        return _createExperienceWithRelationsList(
          _experiencesWithCreator,
          _imageUrlList,
          _objectiveList,
          _rewardList,
          _experiencesWithTags,
          _tags,
        );
      },
    );
  }

  Stream<List<MoorExperienceWithRelations>> watchExperiencesDone(int userId) async* {
    final _experiencesDoneQuery = select(userDoneExperiences)
      ..where(
        (_userDoneExperiences) => _userDoneExperiences.userId.equals(userId),
      );
    final _doneExperiencesIdStream = _experiencesDoneQuery.watch().map(
          (_userDoneExperienceList) => _userDoneExperienceList
              .map(
                (_userDoneExperience) => _userDoneExperience.experienceId,
              )
              .toList(),
        );
    yield* _createExperienceStreamInRelationToUser(_doneExperiencesIdStream);
  }

  Stream<List<MoorExperienceWithRelations>> watchExperiencesLiked(int userId) async* {
    final _contentQuery = select(userLikedExperiences)
      ..where(
        (_userLikedExperiences) => _userLikedExperiences.userId.equals(userId),
      );
    final _likedExperiencesIdStream = _contentQuery.watch().map(
          (_userLikedExperienceList) => _userLikedExperienceList
              .map(
                (_userLikedExperience) => _userLikedExperience.experienceId,
              )
              .toList(),
        );
    yield* _createExperienceStreamInRelationToUser(_likedExperiencesIdStream);
  }

  Stream<List<MoorExperienceWithRelations>> _createExperienceStreamInRelationToUser(Stream<List<int>> _experiencesIdStream) async* {
    final _experiencesWithCreatorJoinStream = _createExperienceWithCreatorsJoinStream();
    final _experiencesWithTagsJoinStream = _createExperiencesWithTagsJoinStream();
    final _tagsListStream = select(moorTags).watch();
    final _objectivesStream = select(moorObjectives).watch();
    final _rewardsStream = select(moorRewards).watch();
    final _imageUrlsStream = select(experienceImageUrls).watch();
    yield* Rx.combineLatest7(
      _experiencesIdStream,
      _experiencesWithCreatorJoinStream,
      _experiencesWithTagsJoinStream,
      _objectivesStream,
      _rewardsStream,
      _imageUrlsStream,
      _tagsListStream,
      (
        List<int> _experiencesIds,
        List<TypedResult> _experiencesWithCreator,
        List<TypedResult> _experiencesWithTags,
        List<MoorObjective> _objectiveList,
        List<MoorReward> _rewardList,
        List<ExperienceImageUrl> _imageUrlList,
        List<MoorTag> _tags,
      ) {
        final _moorExperiencesWithCreator = List<TypedResult>.from(_experiencesWithCreator);
        _moorExperiencesWithCreator.removeWhere(
          (_row) => !_experiencesIds.contains(_row.readTable(moorExperiences).id),
        );
        return _createExperienceWithRelationsList(
          _moorExperiencesWithCreator,
          _imageUrlList,
          _objectiveList,
          _rewardList,
          _experiencesWithTags,
          _tags,
        );
      },
    );
  }

  Stream<List<TypedResult>> _createExperiencesWithTagsJoinStream() {
    return select(experienceTags).join(
      [
        innerJoin(
          moorTags,
          moorTags.id.equalsExp(experienceTags.tagId),
        ),
      ],
    ).watch();
  }

  Stream<List<TypedResult>> _createExperienceWithCreatorsJoinStream() {
    return select(moorExperiences).join(
      [
        innerJoin(
          moorUsers,
          moorUsers.id.equalsExp(moorExperiences.creatorId),
        ),
      ],
    ).watch();
  }

  Stream<List<MoorExperienceWithRelations>> _getExperienceWithRelationsStream(Expression<bool> _whereExpression) async* {
    final _experiencesWithCreatorJoin = select(moorExperiences).join(
      [
        innerJoin(
          moorUsers,
          moorUsers.id.equalsExp(moorExperiences.creatorId),
        ),
      ],
    )..where(_whereExpression);
    final _experienceIds = await _experiencesWithCreatorJoin
        .watch()
        .map(
          (_rows) => _rows.map(
            (_row) => _row.readTable(moorExperiences).id,
          ),
        )
        .first;
    final _experiencesWithTagsJoin = select(experienceTags).join(
      [
        innerJoin(
          moorTags,
          moorTags.id.equalsExp(experienceTags.tagId),
        ),
      ],
    )..where(experienceTags.experienceId.isIn(_experienceIds));
    final _tagsListStream = select(moorTags).watch();
    final _objectivesSelect = select(moorObjectives)..where((moorObjectives) => moorObjectives.experienceId.isIn(_experienceIds));
    final _rewardsSelect = select(moorRewards)..where((moorRewards) => moorRewards.experienceId.isIn(_experienceIds));
    final _imageUrlsSelect = select(experienceImageUrls)..where((experienceImageUrls) => experienceImageUrls.experienceId.isIn(_experienceIds));
    yield* Rx.combineLatest6(
      _experiencesWithCreatorJoin.watch(),
      _experiencesWithTagsJoin.watch(),
      _objectivesSelect.watch(),
      _rewardsSelect.watch(),
      _imageUrlsSelect.watch(),
      _tagsListStream,
      (
        List<TypedResult> _experiencesWithCreator,
        List<TypedResult> _experiencesWithTags,
        List<MoorObjective> _objectiveList,
        List<MoorReward> _rewardList,
        List<ExperienceImageUrl> _imageUrlList,
        List<MoorTag> _tags,
      ) {
        return _createExperienceWithRelationsList(
          _experiencesWithCreator,
          _imageUrlList,
          _objectiveList,
          _rewardList,
          _experiencesWithTags,
          _tags,
        );
      },
    );
  }

  List<MoorExperienceWithRelations> _createExperienceWithRelationsList(
    List<TypedResult> _experiencesWithCreator,
    List<ExperienceImageUrl> _imageUrlList,
    List<MoorObjective> _objectiveList,
    List<MoorReward> _rewardList,
    List<TypedResult> _experiencesWithTags,
    List<MoorTag> _tags,
  ) {
    return _experiencesWithCreator.map(
      (_experienceWithCreatorTypedResult) {
        final _moorExperience = _experienceWithCreatorTypedResult.readTable(moorExperiences);
        final _moorUser = _experienceWithCreatorTypedResult.readTable(moorUsers);
        final _experienceImageUrls = List<ExperienceImageUrl>.from(_imageUrlList);
        _experienceImageUrls.removeWhere((experienceImageUrl) => experienceImageUrl.experienceId != _moorExperience.id);
        final _imageUrls = _experienceImageUrls
            .map(
              (experienceImageUrl) => experienceImageUrl.imageUrl,
            )
            .toList();
        final _moorObjectives = List<MoorObjective>.from(_objectiveList);
        _moorObjectives.removeWhere((objective) => objective.experienceId != _moorExperience.id);
        final _moorRewards = List<MoorReward>.from(_rewardList);
        _moorRewards.removeWhere((reward) => reward.experienceId != _moorExperience.id);
        final _experiencesWithTagsList = List.from(_experiencesWithTags);
        _experiencesWithTagsList.removeWhere(
          (_row) => _row.readTable(experienceTags).experienceId != _moorExperience.id,
        );
        final _experienceMoorTagIdList = _experiencesWithTagsList
            .map(
              (_row) => _row.readTable(moorTags).id,
            )
            .toList();
        final _experienceTags = List<MoorTag>.from(_tags);
        _experienceTags.removeWhere(
          (_moorTag) => !_experienceMoorTagIdList.contains(_moorTag.id),
        );
        return MoorExperienceWithRelations(
          experience: _moorExperience,
          creator: _moorUser,
          imageIdentifiers: _imageUrls,
          objectives: _moorObjectives,
          rewards: _moorRewards,
          tags: _experienceTags,
        );
      },
    ).toList();
  }
}
