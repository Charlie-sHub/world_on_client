import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_notification.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/data/core/moor/converters/domain_notification_to_moor_notification.dart';
import 'package:worldon/data/core/moor/converters/moor_notification_to_domain_notification.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart' as world_on_notification;
import 'package:worldon/domain/core/entities/notification/notification_type_enum.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: NotificationRepositoryInterface, env: [Environment.dev])
class DevelopmentNotificationRepository implements NotificationRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();
  final _logger = Logger();

  @override
  Stream<Either<Failure, KtList<world_on_notification.Notification>>> watchNotifications() async* {
    final _stream = _database.moorNotificationsDao.watchNotifications();
    yield* _stream.map(
      (_moorNotificationsWithRelationsList) {
        if (_moorNotificationsWithRelationsList != null) {
          return right<Failure, KtList<world_on_notification.Notification>>(
            _moorNotificationsWithRelationsList
                .map(
                  (_moorNotificationsWithRelations) => moorNotificationToDomainNotification(_moorNotificationsWithRelations),
                )
                .toImmutableList()
                .sortedBy(
                  (_notification) => _notification.creationDate.getOrCrash(),
                ),
          );
        } else {
          return left<Failure, KtList<world_on_notification.Notification>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
      (_error) {
        final _errorMessage = "Development repository error: $_error";
        _logger.e(_errorMessage);
        return left(
          Failure.coreData(
            CoreDataFailure.serverError(
              errorString: _errorMessage,
            ),
          ),
        );
      },
    );
  }

  @override
  Future<Either<Failure, Unit>> sendNotification(world_on_notification.Notification notification) async {
    try {
      final _moorNotification = domainNotificationToMoorNotification(notification);
      await _database.moorNotificationsDao.insertNotification(_moorNotification);
      return right(unit);
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteNotification(UniqueId id) async {
    try {
      final _notificationToDelete = await _database.moorNotificationsDao.getNotificationById(id.getOrCrash());
      await _database.moorNotificationsDao.deleteNotification(_notificationToDelete);
      return right(unit);
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> checkNotification(UniqueId id) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Future<Either<Failure, Unit>> deleteUserNotifications() {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  Stream<Either<Failure, KtList<world_on_notification.Notification>>> _oldSimulation() {
    Either<Failure, KtList<world_on_notification.Notification>> _either;
    if (_random.nextBool()) {
      _either = right(
        KtList.of(
          getValidNotification(),
          world_on_notification.Notification.empty(),
          getValidNotification().copyWith(
            id: UniqueId(),
            description: EntityDescription("${getValidUser().name.getOrCrash()} unfollowed you"),
            type: NotificationType.unfollow,
          ),
          getValidNotification().copyWith(
            id: UniqueId(),
            description: EntityDescription("${getValidUser().name.getOrCrash()} blocked you"),
            type: NotificationType.block,
          ),
          getValidNotification().copyWith(
            id: UniqueId(),
            description: EntityDescription("${getValidUser().name.getOrCrash()} unblocked you"),
            type: NotificationType.unblock,
          ),
        ),
      );
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }
}
