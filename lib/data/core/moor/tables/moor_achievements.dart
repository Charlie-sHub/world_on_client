import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

class MoorAchievements extends Table {
  TextColumn get id => text()();

  TextColumn get name => text().withLength(min: 1, max: Name.maxLength).customConstraint('UNIQUE')();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  TextColumn get imageURL => text()();

  TextColumn get type => text()();

  IntColumn get requisite => integer()();

  IntColumn get experiencePoints => integer()();

  DateTimeColumn get creationDate => dateTime()();

  DateTimeColumn get modificationDate => dateTime()();

  TextColumn get creatorId => text().customConstraint("REFERENCES moor_users(id)")();
}

class AchievementTags extends Table {
  TextColumn get achievementId => text().customConstraint("REFERENCES moor_achievements(id)")();

  TextColumn get tagId => text().customConstraint("REFERENCES moor_tags(id)")();

  @override
  Set<Column> get primaryKey => {
        achievementId,
        tagId,
      };
}
