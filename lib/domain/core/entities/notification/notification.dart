import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

part 'notification.freezed.dart';

/// [Notification] entity class.
///
/// [User]s receive these in a variety of situations to notify them of things they might be interested in or what other [User]s want them to be notified of.
@freezed
abstract class Notification implements _$Notification {
  const Notification._();

  const factory Notification({
    int id,
    @required User sender, // Maybe change the Users to only the ids
    @required User receiver,
    @required EntityDescription description,
    @required bool seen,
    @required PastDate creationDate,
    @required NotificationType type,
  }) = _Notification;
  
  factory Notification.empty() => Notification(
    sender: User.empty(),
    receiver: User.empty(),
    description: EntityDescription(""),
    seen: false,
    creationDate: PastDate(DateTime.now()),
    type: NotificationType.follow,
  );
  
  Option<ValueFailure<dynamic>> get failureOption {
    return description.failureOrUnit.andThen(receiver.failureOrUnit).andThen(sender.failureOrUnit).andThen(creationDate.failureOrUnit).fold(
        (failure) => some(failure),
        (_) => none(),
    );
  }
  
  bool get isValid => failureOption.isNone();
}
