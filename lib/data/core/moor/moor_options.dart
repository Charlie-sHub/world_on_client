part of 'moor_database.dart';

class MoorOptions extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get languageCode => text()();
}
