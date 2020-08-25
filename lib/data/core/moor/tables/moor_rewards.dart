import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

class MoorRewards extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get experienceId => integer().customConstraint("REFERENCES moor_experiences(id)")();

  TextColumn get name => text().withLength(min: 1, max: Name.maxLength)();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  TextColumn get imageURL => text()();
}
