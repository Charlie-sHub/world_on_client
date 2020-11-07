import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';

class MoorObjectives extends Table {
  TextColumn get id => text()();

  TextColumn get experienceId => text().customConstraint("REFERENCES moor_experiences(id)")();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  RealColumn get latitude => real()();

  RealColumn get longitude => real()();

  TextColumn get imageURL => text()();
}
