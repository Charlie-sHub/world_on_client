import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/notification.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// Repository for the [Notification]'s feature
abstract class NotificationRepository {
  /// Sends a [Notification] to the server to be saved and related to the corresponding [User]s
  Future<Either<Failure, Unit>> sendNotification(Notification notification);

  /// Loads all the [Notification]s of a given user [User]
  Future<Either<Failure, List<Notification>>> loadNotifications(int userId);

  /// Requests the server to delete all [Notification]s of a given [User]
  Future<Either<Failure, Unit>> deleteAllNotifications(int userId);

  ///	Sends a [Notification] to the server for its "seen" attribute to be updated
  Future<Either<Failure, Unit>> checkNotification(Notification notification);
}
