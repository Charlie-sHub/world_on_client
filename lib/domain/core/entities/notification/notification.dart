import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

part 'notification.freezed.dart';

/// [Notification] entity class.
///
/// [User]s receive these in a variety of situations to notify them of things they might be interested in or what other [User]s want them to be notified of.
@freezed
class Notification with _$Notification {
  const Notification._();

  const factory Notification({
    required UniqueId id,
    required User sender,
    // TODO: Is the receiver necessary for the domain entity?
    // The receiver will always be the logged in user
    // Relation is needed in the database of course, but not really beyond that
    // Could be left to just the id
    required User receiver,
    required EntityDescription description,
    required bool seen,
    required PastDate creationDate,
    required NotificationType type,
    required Option<Experience> experienceOption,
  }) = _Notification;

  factory Notification.empty() => Notification(
        id: UniqueId(),
        sender: User.empty(),
        receiver: User.empty(),
        description: EntityDescription(""),
        seen: false,
        creationDate: PastDate(DateTime.now()),
        type: NotificationType.follow,
        experienceOption: none(),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return description.failureOrUnit.andThen(receiver.failureOrUnit).andThen(sender.failureOrUnit).andThen(creationDate.failureOrUnit).fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }

  bool get isValid => failureOption.isNone();
}
