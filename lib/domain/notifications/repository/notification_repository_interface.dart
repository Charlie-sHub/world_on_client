import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

/// Repository for the [Notification]'s feature
abstract class NotificationRepositoryInterface {
  /// Sends a [Notification] to the server to be saved and related to the corresponding [User]s
  Future<Either<Failure, Unit>> sendNotification(Notification notification);

  /// Loads all the [Notification]s of the logged in [User]
  Stream<Either<Failure, KtList<Notification>>> loadNotifications();

  /// Requests the server to delete all [Notification]s of the logged in [User]
  Future<Either<Failure, Unit>> deleteUserNotifications();

  ///	Sends a [Notification]'s id to the server for its "seen" attribute to be updated
  Future<Either<Failure, Unit>> checkNotification(int id);

  ///	Sends a [Notification]'s id  to the server to be deleted
  Future<Either<Failure, Unit>> deleteNotification(int id);
}
