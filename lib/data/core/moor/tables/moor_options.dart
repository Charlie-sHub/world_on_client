import 'package:moor_flutter/moor_flutter.dart';

class MoorOptions extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get userId => integer().customConstraint("REFERENCES moor_users(id)")();

  TextColumn get languageCode => text()();
}
