part of 'moor_database.dart';

class MoorOptions extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get userId => integer()();

  TextColumn get languageCode => text()();
}
