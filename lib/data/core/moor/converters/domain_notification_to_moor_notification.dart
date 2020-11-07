import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';

MoorNotificationsCompanion domainNotificationToMoorNotification(Notification notification) => MoorNotificationsCompanion.insert(
      id: notification.id.getOrCrash(),
      description: notification.description.getOrCrash(),
      seen: notification.seen,
      creationDate: notification.creationDate.getOrCrash(),
      notificationType: notification.type,
      senderId: notification.sender.id.getOrCrash(),
      receiverId: notification.receiver.id.getOrCrash(),
    );
