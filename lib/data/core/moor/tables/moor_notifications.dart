import 'package:moor_flutter/moor_flutter.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';

class MoorNotifications extends Table {
  TextColumn get id => text()();

  TextColumn get description => text().withLength(min: 1, max: EntityDescription.maxLength)();

  BoolColumn get seen => boolean()();

  DateTimeColumn get creationDate => dateTime()();

  IntColumn get notificationType => intEnum<NotificationType>()();

  TextColumn get senderId => text().customConstraint("REFERENCES moor_users(id)")();

  TextColumn get receiverId => text().customConstraint("REFERENCES moor_users(id)")();
}
