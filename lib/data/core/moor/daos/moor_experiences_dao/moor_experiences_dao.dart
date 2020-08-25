import 'package:moor/moor.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/data/core/moor/daos/moor_tags_dao/moor_tag_with_moor_user.dart';
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

  Future insertExperienceTodo(Insertable<UserToDoExperience> userToDoExperience) => into(userToDoExperiences).insert(userToDoExperience);

  Future insertExperienceImage(Insertable<ExperienceImageUrl> imageUrl) => into(experienceImageUrls).insert(imageUrl);

  Future removeExperienceTodo(Insertable<UserToDoExperience> userToDoExperience) => delete(userToDoExperiences).delete(userToDoExperience);

  Future insertExperienceDone(Insertable<UserDoneExperience> userDoneExperience) => into(userDoneExperiences).insert(userDoneExperience);

  Future insertExperienceLiked(Insertable<UserLikedExperience> userLikedExperience) => into(userLikedExperiences).insert(userLikedExperience);

  Future<int> deleteAllExperiences() => delete(moorExperiences).go();

  Future<int> deleteAllExperiencesImagesUrls() => delete(experienceImageUrls).go();

  Future<int> deleteAllExperiencesTags() => delete(experienceTags).go();

  Future<int> deleteAllUsersLikedExperiences() => delete(userLikedExperiences).go();

  Future<int> deleteAllUsersDoneExperiences() => delete(userDoneExperiences).go();

  Future<int> deleteAllUsersToDoExperiences() => delete(userToDoExperiences).go();

  Future<int> countExperiences() async {
    final _moorExperienceList = await select(moorExperiences).get();
    return _moorExperienceList.length;
  }

  Future<MoorExperience> selectExperienceById(int id) async {
    final _experienceQuery = select(moorExperiences)..where((_experiences) => _experiences.id.equals(id));
    return _experienceQuery.getSingle();
  }

  Future<Stream<List<MoorExperienceWithRelations>>> watchSearchExperiencesByTitle(String title) async {
    final _whereExpression = moorExperiences.title.contains(title);
    return _getExperienceWithRelationsStream(_whereExpression);
  }

  Future<Stream<List<MoorExperienceWithRelations>>> watchSearchExperiencesByDifficulty(int difficulty) async {
    final _whereExpression = moorExperiences.difficulty.equals(difficulty);
    return _getExperienceWithRelationsStream(_whereExpression);
  }

  Future<Stream<List<MoorExperienceWithRelations>>> watchSearchExperiencesByTags(List<int> tagIds) async {
    final _experiencesByTagsQuery = select(experienceTags)
      ..where(
        (experienceTags) => experienceTags.tagId.isIn(tagIds),
      );
    final _experienceTagList = await _experiencesByTagsQuery.get();
    final _experienceIds = _experienceTagList.map((_experienceTag) => _experienceTag.experienceId).toSet();
    final _whereExpression = moorExperiences.id.isIn(_experienceIds);
    return _getExperienceWithRelationsStream(_whereExpression);
  }

  Future<Stream<List<MoorExperienceWithRelations>>> watchExperiencesCreated(int userId) async {
    final _whereExpression = moorExperiences.creatorId.equals(userId);
    return _getExperienceWithRelationsStream(_whereExpression);
  }

  Future<Stream<List<MoorExperienceWithRelations>>> watchFeed(int userId) async {
    final _followedUsersQuery = select(userFollowRelations)
      ..where(
        (userFollowRelations) => userFollowRelations.followedId.equals(userId),
      );
    final _followedIds = await _followedUsersQuery
        .watch()
        .map(
          (userFollowedRelationList) => userFollowedRelationList.map(
            (followedUsers) => followedUsers.followedId,
          ),
        )
        .first;
    final _whereExpression = moorExperiences.creatorId.isIn(_followedIds);
    return _getExperienceWithRelationsStream(_whereExpression);
  }

  Future<Stream<List<MoorExperienceWithRelations>>> watchExperiencesDone(int userId) async {
    final _contentQuery = select(userDoneExperiences).join(
      [
        innerJoin(
          moorExperiences,
          moorExperiences.id.equalsExp(userDoneExperiences.experienceId),
        ),
      ],
    )..where((userDoneExperiences.userId.equals(userId)));
    final _usersDoneExperiencesIds = await _contentQuery
        .watch()
        .map(
          (_rows) => _rows.map(
            (_row) => _row.readTable(moorExperiences).id,
          ),
        )
        .first;
    final _whereExpression = moorExperiences.creatorId.isIn(_usersDoneExperiencesIds);
    return _getExperienceWithRelationsStream(_whereExpression);
  }

  Future<Stream<List<MoorExperienceWithRelations>>> watchExperiencesLiked(int userId) async {
    final _contentQuery = select(userLikedExperiences).join(
      [
        innerJoin(
          moorExperiences,
          moorExperiences.id.equalsExp(userLikedExperiences.experienceId),
        ),
      ],
    )
      ..where((userLikedExperiences.userId.equals(userId)));
    final _usersLikedExperiencesIds = await _contentQuery
      .watch()
      .map(
        (_rows) =>
        _rows.map(
            (_row) =>
          _row
            .readTable(moorExperiences)
            .id,
        ),
    )
      .first;
    final _whereExpression = moorExperiences.creatorId.isIn(_usersLikedExperiencesIds);
    return _getExperienceWithRelationsStream(_whereExpression);
  }

  Future<Stream<List<MoorExperienceWithRelations>>> _getExperienceWithRelationsStream(Expression<bool> _whereExpression) async {
    // TODO: Control null values
    final _experiencesWithCreatorJoin = select(moorExperiences).join(
      [
        innerJoin(
          moorUsers,
          moorUsers.id.equalsExp(moorExperiences.creatorId),
        ),
      ],
    )
      ..where(_whereExpression);
    final _experienceIds = await _experiencesWithCreatorJoin
      .watch()
      .map(
        (_rows) =>
        _rows.map(
            (_row) =>
          _row
            .readTable(moorExperiences)
            .id,
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
    )
      ..where(experienceTags.experienceId.isIn(_experienceIds));
    final _tagsWithCreatorsListStream = select(moorUsers)
      .join(
      [
        innerJoin(
          moorTags,
          moorTags.creatorId.equalsExp(moorUsers.id),
        ),
      ],
    )
      .watch()
      .map(
        (_rows) =>
        _rows
          .map(
            (_row) =>
            MoorTagWithMoorUser(
              tag: _row.readTable(moorTags),
              creator: _row.readTable(moorUsers),
            ),
        )
          .toList(),
    );
    final _objectivesSelect = select(moorObjectives)
      ..where((moorObjectives) => moorObjectives.experienceId.isIn(_experienceIds));
    final _rewardsSelect = select(moorRewards)
      ..where((moorRewards) => moorRewards.experienceId.isIn(_experienceIds));
    final _imageUrlsSelect = select(experienceImageUrls)
      ..where((experienceImageUrls) => experienceImageUrls.experienceId.isIn(_experienceIds));
    return Rx.combineLatest6(
      _experiencesWithCreatorJoin.watch(),
      _experiencesWithTagsJoin.watch(),
      _objectivesSelect.watch(),
      _rewardsSelect.watch(),
      _imageUrlsSelect.watch(),
      _tagsWithCreatorsListStream,
        (List<TypedResult> _experiencesWithCreator,
        List<TypedResult> _experiencesWithTags,
        List<MoorObjective> _objectiveList,
        List<MoorReward> _rewardList,
        List<ExperienceImageUrl> _imageUrlList,
        List<MoorTagWithMoorUser> _tagsWithCreator,) {
        return _experiencesWithCreator.map(
            (_experienceWithCreatorTypedResult) {
            final _moorExperience = _experienceWithCreatorTypedResult.readTable(moorExperiences);
            final _moorUser = _experienceWithCreatorTypedResult.readTable(moorUsers);
            final _experienceImageUrls = _imageUrlList;
            _experienceImageUrls.removeWhere((experienceImageUrl) => experienceImageUrl.experienceId != _moorExperience.id);
            final _imageUrls = _experienceImageUrls
              .map(
                (experienceImageUrl) => experienceImageUrl.imageUrl,
            )
              .toList();
            final _moorObjectives = _objectiveList;
            _moorObjectives.removeWhere((objective) => objective.experienceId != _moorExperience.id);
            final _moorRewards = _rewardList;
            _moorRewards.removeWhere((reward) => reward.experienceId != _moorExperience.id);
            final _experiencesWithTagsList = _experiencesWithTags;
            _experiencesWithTagsList.removeWhere((_row) =>
            _row
              .readTable(moorExperiences)
              .id != _moorExperience.id);
            final _experienceMoorTagIdList = _experiencesWithTagsList
              .map(
                (_row) =>
              _row
                .readTable(moorTags)
                .id,
            )
              .toList();
            final _experienceMoorTagsWithCreator = _tagsWithCreator;
            _experienceMoorTagsWithCreator.removeWhere(
                (_moorTagWithUser) => !_experienceMoorTagIdList.contains(_moorTagWithUser.tag.id),
            );
            return MoorExperienceWithRelations(
              experience: _moorExperience,
              creator: _moorUser,
              imageUrls: _imageUrls,
              objectives: _moorObjectives,
              rewards: _moorRewards,
              tags: _experienceMoorTagsWithCreator,
            );
          },
        ).toList();
      },
    );
  }
}
