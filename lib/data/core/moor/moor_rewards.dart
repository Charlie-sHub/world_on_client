part of 'moor_database.dart';

class MoorRewards extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get experienceId => integer()();

  TextColumn get name => text().withLength(min: 1, max: Name.maxLength)();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  TextColumn get imageURL => text()();
}
