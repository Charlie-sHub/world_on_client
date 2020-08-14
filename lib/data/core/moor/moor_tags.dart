part of 'moor_database.dart';

class MoorTags extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text().withLength(min: 1, max: Name.maxLength)();

  // TODO: implement User creator

  DateTimeColumn get creationDate => dateTime()();

  DateTimeColumn get modificationDate => dateTime()();
}

class MoorTagWithRelations {
  final MoorTag tag;
  final MoorUser creator;

  MoorTagWithRelations(
    this.tag,
    this.creator,
  );
}
