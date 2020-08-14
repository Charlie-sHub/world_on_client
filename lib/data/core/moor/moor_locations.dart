part of 'moor_database.dart';

class MoorLocations extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get city => text()();

  TextColumn get country => text()();

  TextColumn get postalCode => text()();
}

class MoorLocationWithRelations {
  final MoorLocation location;
  final Set<MoorExperience> experiences;

  MoorLocationWithRelations(
    this.location,
    this.experiences,
  );
}
