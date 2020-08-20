part of 'moor_database.dart';

class MoorNotifications extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  BoolColumn get seen => boolean()();

  DateTimeColumn get creationDate => dateTime()();

  IntColumn get notificationType => intEnum<NotificationType>()();

  IntColumn get senderId => integer().customConstraint("REFERENCES moor_users(id)")();

  IntColumn get receiverId => integer().customConstraint("REFERENCES moor_users(id)")();
}
