import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

@LazySingleton(
  as: NotificationRepositoryInterface,
  env: Environment.dev,
)
class DevelopmentNotificationRepository implements NotificationRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> checkNotification(int id) {
    // TODO: implement checkNotification
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteUserNotifications() {
    // TODO: implement deleteUserNotifications
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, List<Notification>>> loadNotifications() {
    // TODO: implement loadNotifications
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> sendNotification(Notification notification) {
    // TODO: implement sendNotification
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteNotification(int id) {
    // TODO: implement deleteNotification
    throw UnimplementedError();
  }
}
