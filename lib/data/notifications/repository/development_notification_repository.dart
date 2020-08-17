import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_notification.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: NotificationRepositoryInterface, env: [Environment.dev])
class DevelopmentNotificationRepository implements NotificationRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();

  @override
  Future<Either<Failure, Unit>> checkNotification(int id) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> deleteUserNotifications() {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Stream<Either<Failure, KtList<Notification>>> watchNotifications() {
    Either<Failure, KtList<Notification>> _either;
    if (_random.nextBool()) {
      _either = right(KtList.of(
        getValidNotification(),
        Notification.empty(),
        getValidNotification().copyWith(
          id: 2,
          description: EntityDescription("${getValidUser().name.getOrCrash()} unfollowed you"),
          type: NotificationType.unfollow,
        ),
        getValidNotification().copyWith(
          id: 3,
          description: EntityDescription("${getValidUser().name.getOrCrash()} blocked you"),
          type: NotificationType.block,
        ),
        getValidNotification().copyWith(
          id: 4,
          description: EntityDescription("${getValidUser().name.getOrCrash()} unblocked you"),
          type: NotificationType.unblock,
        ),
      ));
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Future<Either<Failure, Unit>> sendNotification(Notification notification) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> deleteNotification(int id) {
    // use the notifications dao to delete the notification by its id
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
