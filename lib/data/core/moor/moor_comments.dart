part of 'moor_database.dart';

class MoorComments extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get content => text().withLength(min: 1, max: CommentContent.maxLength)();

  DateTimeColumn get creationDate => dateTime()();

  DateTimeColumn get modificationDate => dateTime()();

  IntColumn get posterId => integer().customConstraint("REFERENCES moor_users(id)")();

  IntColumn get experienceId => integer().customConstraint("REFERENCES moor_experiences(id)")();
}
