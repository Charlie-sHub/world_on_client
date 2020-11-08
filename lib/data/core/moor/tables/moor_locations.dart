import 'package:moor_flutter/moor_flutter.dart';

class MoorLocations extends Table {
  TextColumn get id => text()();

  TextColumn get city => text()();

  TextColumn get country => text()();

  TextColumn get postalCode => text()();

  @override
  Set<Column> get primaryKey => {id};
}

class LocationExperiences extends Table {
  TextColumn get locationId => text().customConstraint("REFERENCES moor_locations(id)")();

  TextColumn get experienceId => text().customConstraint("REFERENCES moor_experiences(id)")();

  @override
  Set<Column> get primaryKey => {
        locationId,
        experienceId,
      };
}
