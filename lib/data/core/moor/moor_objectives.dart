part of 'moor_database.dart';

class MoorObjectives extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get experienceId => integer().customConstraint("REFERENCES moor_experiences(id)")();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  RealColumn get latitude => real()();

  RealColumn get longitude => real()();

  TextColumn get imageURL => text()();
}
