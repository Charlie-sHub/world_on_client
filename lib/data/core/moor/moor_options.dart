part of 'moor_database.dart';

class MoorOptions extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get userId => integer().customConstraint("REFERENCES moor_users(id)")();

  TextColumn get languageCode => text()();
}
