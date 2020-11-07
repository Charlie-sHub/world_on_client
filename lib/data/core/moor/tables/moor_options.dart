import 'package:moor_flutter/moor_flutter.dart';

class MoorOptions extends Table {
  TextColumn get id => text()();

  TextColumn get userId => text().customConstraint("REFERENCES moor_users(id)")();

  TextColumn get languageCode => text()();
}
