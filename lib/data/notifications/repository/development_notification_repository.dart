
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart' as world_on_notification;
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

@LazySingleton(as: NotificationRepositoryInterface, env: [Environment.dev])
class DevelopmentNotificationRepository implements NotificationRepositoryInterface {

  @override
  Stream<Either<Failure, KtList<world_on_notification.Notification>>> watchNotifications() async* {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> sendNotification(world_on_notification.Notification notification) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteNotification(UniqueId id) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> checkNotification(UniqueId id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteUserNotifications() {
    throw UnimplementedError();
  }
}
