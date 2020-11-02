import 'package:moor_flutter/moor_flutter.dart';

class MoorLocations extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get city => text()();

  TextColumn get country => text()();

  TextColumn get postalCode => text()();
}

class LocationExperiences extends Table {
  IntColumn get locationId => integer().customConstraint("REFERENCES moor_locations(id)")();

  IntColumn get experienceId => integer().customConstraint("REFERENCES moor_experiences(id)")();

  @override
  Set<Column> get primaryKey => {
        locationId,
        experienceId,
      };
}
