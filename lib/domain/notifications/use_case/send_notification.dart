import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

class SendNotification implements AsyncUseCase<Unit, Params> {
  final NotificationRepositoryInterface _repository;

  SendNotification(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final notification = Notification(
      id: null,
      sender: params.sender,
      receiver: params.receiver,
      description: params.description,
      seen: params.seen,
      creationDate: PastDate(DateTime.now()),
      type: params.type,
    );
    return _repository.sendNotification(notification);
  }
}

class Params {
  final User sender; // Maybe change the Users to only the ids
  final User receiver;
  final EntityDescription description;
  final bool seen;
  final NotificationType type;

  Params({
    @required this.sender,
    @required this.receiver,
    @required this.description,
    @required this.seen,
    @required this.type,
  });
}
