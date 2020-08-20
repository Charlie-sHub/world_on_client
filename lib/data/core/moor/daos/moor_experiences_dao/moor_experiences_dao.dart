import 'package:moor/moor.dart';
import 'package:worldon/data/core/moor/moor_database.dart';

import 'moor_experience_with_relations.dart';

part 'moor_experiences_dao.g.dart';

@UseDao(
  tables: [
    MoorExperiences,
    UserDoneExperiences,
    UserLikedExperiences,
    UserToDoExperiences,
    UserFollowRelations,
    ExperienceImageUrls,
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

  Future<MoorExperience> selectExperienceById(int id) async {
    final _experienceQuery = select(moorExperiences)
      ..where((experience) => experience.id.equals(id))
      ..limit(1)
      ..get();
    return _experienceQuery.getSingle();
  }

  Stream<List<MoorExperience>> watchSearchExperiencesByTitle(String title) {
    final _contentQuery = select(moorExperiences)..where((moorExperiences) => moorExperiences.title.equals(title));
    return _contentQuery.watch();
  }

  Future<List<String>> selectExperienceImageUrls(int experienceId) async {
    final _contentQuery = select(experienceImageUrls)
      ..where((experienceImageUrl) => experienceImageUrl.experienceId.equals(experienceId))
      ..watch();
    return _contentQuery.get().then((list) => list.map((experienceImageUrl) => experienceImageUrl.imageUrl).toList());
  }

  Stream<List<MoorExperience>> watchExperiencesCreated(int userId) {
    final _contentQuery = select(moorExperiences)..where((moorExperiences) => moorExperiences.creatorId.equals(userId));
    return _contentQuery.watch();
  }
  
  Future<Stream<List<MoorExperienceWithRelations>>> watchFeed(int userId) async {
    final _followedUsersQuery = select(userFollowRelations)
      ..where((userFollowRelations) => userFollowRelations.followedId.equals(userId));
    final _followedIds = await _followedUsersQuery
      .watch()
      .map((event) => event.map((followedUsers) => followedUsers.followedId))
      .first;
    final _feedContentQuery = select(moorExperiences)
      ..where((moorExperiences) => moorExperiences.creatorId.isIn(_followedIds))
      ..orderBy(
        [
            (experience) =>
            OrderingTerm(
              expression: experience.creationDate,
              mode: OrderingMode.desc,
            ),
        ],
      );
    return null;
  }

  Stream<List<MoorExperience>> watchExperiencesDone(int userId) {
    final _contentQuery = select(userDoneExperiences).join(
      [
        innerJoin(
          moorExperiences,
          moorExperiences.id.equalsExp(userDoneExperiences.experienceId),
        ),
      ],
    )
      ..where((userDoneExperiences.userId.equals(userId)));
    return _contentQuery.watch().map(
        (rows) =>
        rows
          .map(
            (row) => row.readTable(moorExperiences),
        )
          .toList(),
    );
  }

  Stream<List<MoorExperience>> watchExperiencesLiked(int userId) {
    final _contentQuery = select(userLikedExperiences).join(
      [
        innerJoin(
          moorExperiences,
          moorExperiences.id.equalsExp(userLikedExperiences.experienceId),
        ),
      ],
    )
      ..where((userLikedExperiences.userId.equals(userId)));
    return _contentQuery.watch().map(
        (rows) =>
        rows
          .map(
            (row) => row.readTable(moorExperiences),
        )
          .toList(),
    );
  }
}
