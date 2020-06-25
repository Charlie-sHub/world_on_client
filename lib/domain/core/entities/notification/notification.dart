import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

part 'notification.freezed.dart';

/// [Notification] entity class.
///
/// [User]s receive these in a variety of situations to notify them of things they might be interested in or what other [User]s want them to be notified of.
@freezed
abstract class Notification with _$Notification {
  const factory Notification({
    @required int id,
    @required User sender, // Maybe change the Users to only the ids
    @required User receiver,
    @required EntityDescription description,
    @required bool seen,
    @required PastDate creationDate,
    @required NotificationType type,
  }) = _Notification;
}
