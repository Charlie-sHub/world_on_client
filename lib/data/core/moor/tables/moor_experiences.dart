import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

class MoorExperiences extends Table {
  TextColumn get id => text()();

  TextColumn get title => text().withLength(min: 1, max: Name.maxLength)();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  RealColumn get latitude => real()();

  RealColumn get longitude => real()();

  IntColumn get difficulty => integer()();

  DateTimeColumn get creationDate => dateTime()();

  DateTimeColumn get modificationDate => dateTime()();

  TextColumn get creatorId => text().customConstraint("REFERENCES moor_users(id)")();
}

class ExperienceImageUrls extends Table {
  TextColumn get experienceId => text().customConstraint("REFERENCES moor_experiences(id)")();

  TextColumn get imageUrl => text()();

  @override
  Set<Column> get primaryKey => {
        experienceId,
        imageUrl,
      };
}

class ExperienceTags extends Table {
  TextColumn get experienceId => text().customConstraint("REFERENCES moor_experiences(id)")();

  TextColumn get tagId => text().customConstraint("REFERENCES moor_tags(id)")();

  @override
  Set<Column> get primaryKey => {
        experienceId,
        tagId,
      };
}
