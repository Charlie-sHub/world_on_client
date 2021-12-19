import 'package:dartz/dartz.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

Notification getValidNotification() => Notification(
      id: UniqueId(),
      sender: getValidUser().simplified,
      receiverId: UniqueId(),
      description: EntityDescription(
        "${getValidUser().name.getOrCrash()} is following you now",
      ),
      seen: false,
      creationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
      type: NotificationType.follow,
      experienceOption: none(),
    );
