part of 'moor_database.dart';

class MoorExperiences extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text().withLength(min: 1, max: Name.maxLength)();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  RealColumn get latitude => real()();

  RealColumn get longitude => real()();

  IntColumn get difficulty => integer()();

  DateTimeColumn get creationDate => dateTime()();

  DateTimeColumn get modificationDate => dateTime()();

  IntColumn get creatorId => integer()();
}

class ExperienceImageUrls extends Table {
  IntColumn get experienceId => integer()();

  TextColumn get imageUrl => text()();
}

class ExperienceTags extends Table {
  IntColumn get experienceId => integer()();

  IntColumn get tagId => integer()();
}
