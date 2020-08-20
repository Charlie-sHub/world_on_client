part of 'moor_database.dart';

class MoorAchievements extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text().withLength(min: 1, max: Name.maxLength).customConstraint('UNIQUE')();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  TextColumn get imageURL => text()();

  TextColumn get type => text()();

  IntColumn get requisite => integer()();

  IntColumn get experiencePoints => integer()();

  DateTimeColumn get creationDate => dateTime()();

  DateTimeColumn get modificationDate => dateTime()();

  IntColumn get creatorId => integer().customConstraint("REFERENCES moor_users(id)")();
}

class AchievementTags extends Table {
  IntColumn get achievementId => integer().customConstraint("REFERENCES moor_achievements(id)")();

  IntColumn get tagId => integer().customConstraint("REFERENCES moor_tags(id)")();
}
