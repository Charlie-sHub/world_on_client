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

class BlockedUsers extends Table {
  IntColumn get userId => integer()();

  IntColumn get blockedUserId => integer()();
}

class FollowedUsers extends Table {
  IntColumn get userId => integer()();

  IntColumn get followedUserId => integer()();
}

class UserAchievements extends Table {
  IntColumn get userId => integer()();

  IntColumn get achievementId => integer()();
}

class UserInterests extends Table {
  IntColumn get userId => integer()();

  IntColumn get tagId => integer()();
}

class UserExperiencesDone extends Table {
  IntColumn get userId => integer()();

  IntColumn get experienceId => integer()();
}

class UserExperiencesLiked extends Table {
  IntColumn get userId => integer()();

  IntColumn get experienceId => integer()();
}

class UserExperiencesToDo extends Table {
  IntColumn get userId => integer()();

  IntColumn get experienceId => integer()();
}
