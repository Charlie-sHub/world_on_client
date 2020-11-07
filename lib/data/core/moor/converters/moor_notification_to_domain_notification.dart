import 'package:worldon/data/core/moor/converters/moor_user_to_domain_user.dart';
import 'package:worldon/data/core/moor/daos/moor_notifications_dao/moor_notification_with_relations.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

Notification moorNotificationToDomainNotification(MoorNotificationWithRelations _moorNotificationsWithRelations) => Notification(
      id: UniqueId.fromUniqueString(_moorNotificationsWithRelations.notification.id),
      sender: moorUserToDomainUser(_moorNotificationsWithRelations.sender),
      receiver: moorUserToDomainUser(_moorNotificationsWithRelations.receiver),
      description: EntityDescription(_moorNotificationsWithRelations.notification.description),
      seen: _moorNotificationsWithRelations.notification.seen,
      creationDate: PastDate(_moorNotificationsWithRelations.notification.creationDate),
      type: _moorNotificationsWithRelations.notification.notificationType,
    );
