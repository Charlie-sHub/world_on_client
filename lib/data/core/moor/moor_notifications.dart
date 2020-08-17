part of 'moor_database.dart';

class MoorNotifications extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  BoolColumn get seen => boolean()();

  DateTimeColumn get creationDate => dateTime()();

  IntColumn get senderId => integer()();

  IntColumn get receiverId => integer()();

  IntColumn get notificationType => intEnum<NotificationType>()();
}
