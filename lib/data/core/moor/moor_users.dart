part of 'moor_database.dart';

class MoorUsers extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text().withLength(min: 1, max: Name.maxLength)();

  TextColumn get username => text().withLength(min: 1, max: Name.maxLength)();

  TextColumn get password => text().withLength(min: 1, max: Password.maxLength)();

  TextColumn get email => text()();

  DateTimeColumn get birthday => dateTime()();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  TextColumn get imageURL => text()();

  IntColumn get level => integer()();

  IntColumn get experiencePoints => integer()();

  BoolColumn get privacy => boolean()();

  BoolColumn get adminPowers => boolean()();

  BoolColumn get enabled => boolean()();

  DateTimeColumn get lastLogin => dateTime()();

  DateTimeColumn get creationDate => dateTime()();

  DateTimeColumn get modificationDate => dateTime()();

  BoolColumn get isLoggedIn => boolean()();
}

class MoorUserWithRelations {
  final MoorUser user;
  final MoorOptions options;
  final Set<MoorUser> blockedUsers;
  final Set<MoorUser> followedUsers;
  final Set<MoorTag> interests;
  final Set<MoorAchievement> achievements;
  final Set<MoorExperience> experiencesDone;
  final Set<MoorExperience> experiencesLiked;
  final Set<MoorExperience> experiencesToDo;

  MoorUserWithRelations(
    this.user,
    this.options,
    this.blockedUsers,
    this.followedUsers,
    this.interests,
    this.achievements,
    this.experiencesDone,
    this.experiencesLiked,
    this.experiencesToDo,
  );
}
