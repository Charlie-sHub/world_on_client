part of 'moor_database.dart';

class MoorLocations extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get city => text()();

  TextColumn get country => text()();

  TextColumn get postalCode => text()();
}

class LocationExperiences extends Table {
  IntColumn get locationId => integer()();

  IntColumn get experienceId => integer()();
}
