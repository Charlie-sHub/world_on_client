import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

class MoorRewards extends Table {
  TextColumn get id => text()();

  TextColumn get experienceId => text().customConstraint("REFERENCES moor_experiences(id)")();

  TextColumn get name => text().withLength(min: 1, max: Name.maxLength)();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  TextColumn get imageURL => text()();
}
