import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

import 'get_valid_user.dart';

Notification getValidNotification() {
  return Notification(
    sender: getValidUser(),
    receiver: getValidUser().copyWith(
      id: 2,
      name: Name("Carlos"),
      username: Name("carlos"),
    ),
    description: EntityDescription("${getValidUser().name.getOrCrash()} is following you now"),
    seen: false,
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
    type: NotificationType.follow,
  );
}
