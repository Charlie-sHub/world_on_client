import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';

class MoorUsers extends Table {
  TextColumn get id => text()();

  TextColumn get name => text().withLength(min: 1, max: Name.maxLength)();

  TextColumn get username => text().withLength(min: 1, max: Name.maxLength).customConstraint('UNIQUE')();

  TextColumn get password => text().withLength(min: 1, max: Password.maxLength)();

  TextColumn get email => text().customConstraint('UNIQUE')();

  DateTimeColumn get birthday => dateTime()();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  TextColumn get imageURL => text()();

  IntColumn get level => integer()();

  IntColumn get experiencePoints => integer()();

  BoolColumn get privacy => boolean()();

  BoolColumn get adminPowers => boolean()();

  BoolColumn get enabled => boolean()();

  DateTimeColumn get lastLogin => dateTime()();

  DateTimeColumn get creationDate => dateTime()();

  DateTimeColumn get modificationDate => dateTime()();

  BoolColumn get isLoggedIn => boolean()();

  @override
  Set<Column> get primaryKey => {id};
}

class UserBlockRelations extends Table {
  TextColumn get blockedId => text().customConstraint("REFERENCES moor_users(id)")();

  TextColumn get blockerId => text().customConstraint("REFERENCES moor_users(id)")();

  @override
  Set<Column> get primaryKey => {
        blockedId,
        blockerId,
      };
}

class UserFollowRelations extends Table {
  TextColumn get followedId => text().customConstraint("REFERENCES moor_users(id)")();

  TextColumn get followingId => text().customConstraint("REFERENCES moor_users(id)")();

  @override
  Set<Column> get primaryKey => {
        followedId,
        followingId,
      };
}

class UserAchievements extends Table {
  TextColumn get userId => text().customConstraint("REFERENCES moor_users(id)")();

  TextColumn get achievementId => text().customConstraint("REFERENCES moor_achievements(id)")();

  @override
  Set<Column> get primaryKey => {
        userId,
        achievementId,
      };
}

class UserInterests extends Table {
  TextColumn get userId => text().customConstraint("REFERENCES moor_users(id)")();

  TextColumn get tagId => text().customConstraint("REFERENCES moor_tags(id)")();

  @override
  Set<Column> get primaryKey => {
        userId,
        tagId,
      };
}

class UserDoneExperiences extends Table {
  TextColumn get userId => text().customConstraint("REFERENCES moor_users(id)")();

  TextColumn get experienceId => text().customConstraint("REFERENCES moor_experiences(id)")();

  @override
  Set<Column> get primaryKey => {
        userId,
        experienceId,
      };
}

class UserLikedExperiences extends Table {
  TextColumn get userId => text().customConstraint("REFERENCES moor_users(id)")();

  TextColumn get experienceId => text().customConstraint("REFERENCES moor_experiences(id)")();

  @override
  Set<Column> get primaryKey => {
        userId,
        experienceId,
      };
}

class UserToDoExperiences extends Table {
  TextColumn get userId => text().customConstraint("REFERENCES moor_users(id)")();

  TextColumn get experienceId => text().customConstraint("REFERENCES moor_experiences(id)")();

  @override
  Set<Column> get primaryKey => {
        userId,
        experienceId,
      };
}
