part of 'moor_database.dart';

class MoorTags extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get creatorId => integer().customConstraint("REFERENCES moor_users(id)")();

  TextColumn get name => text().withLength(min: 1, max: Name.maxLength).customConstraint('UNIQUE')();

  DateTimeColumn get creationDate => dateTime()();

  DateTimeColumn get modificationDate => dateTime()();
}
