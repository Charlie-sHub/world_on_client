part of 'moor_database.dart';

class MoorNotifications extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  BoolColumn get seen => boolean()();

  DateTimeColumn get creationDate => dateTime()();

// TODO: Implement NotificationType type
}

class MoorNotificationWithRelations {
  final MoorNotification notification;
  final MoorUser sender;
  final MoorUser receiver;

  MoorNotificationWithRelations(
    this.notification,
    this.sender,
    this.receiver,
  );
}
