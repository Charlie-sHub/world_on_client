import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart' hide Notification;
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/data/core/models/notification/notification_dto.dart';
import 'package:worldon/data/core/models/notification/notification_fields.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

@LazySingleton(as: NotificationRepositoryInterface, env: [Environment.prod])
class ProductionNotificationRepository implements NotificationRepositoryInterface {
  final _logger = Logger();
  final FirebaseFirestore _firestore;

  ProductionNotificationRepository(this._firestore);

  @override
  Future<Either<Failure, Unit>> checkNotification(UniqueId id) async {
    try {
      await _firestore.notificationCollection
          .doc(
        id.getOrCrash(),
      )
          .update(
        {
          NotificationFields.seen: true,
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Stream<Either<Failure, KtList<Notification>>> watchNotifications() async* {
    final _userDocument = await _firestore.userDocument();
    final _userDto = UserDto.fromFirestore(await _userDocument.get());
    yield* _firestore.notificationCollection
        .where(
          "${NotificationFields.receiver}.id",
          isEqualTo: _userDto.id,
        )
        .orderBy(
          NotificationFields.creationDate,
          descending: true,
        )
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (document) => NotificationDto.fromFirestore(document).toDomain(),
          ),
        )
        .map(
      (experiences) {
        if (experiences.isNotEmpty) {
          return right<Failure, KtList<Notification>>(
            experiences.toImmutableList(),
          );
        } else {
          return left<Failure, KtList<Notification>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
      (error) => left(
        onError(error),
      ),
    );
  }

  @override
  Stream<Either<Failure, bool>> watchIfNewNotifications() async* {
    final _userDocument = await _firestore.userDocument();
    final _userDto = UserDto.fromFirestore(await _userDocument.get());
    yield* _firestore.notificationCollection
        .where(
          "${NotificationFields.receiver}.id",
          isEqualTo: _userDto.id,
        )
        .where(
          NotificationFields.seen,
          isEqualTo: false,
        )
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.isNotEmpty,
        )
        .map(
          (_newNotificationsBool) => right<Failure, bool>(_newNotificationsBool),
        )
        .onErrorReturnWith(
          (error) => left(
            onError(error),
          ),
        );
  }

  @override
  Future<Either<Failure, Unit>> sendNotification(Notification notification) async {
    try {
      final _notificationDto = NotificationDto.fromDomain(notification);
      await _firestore.notificationCollection.doc(notification.id.getOrCrash()).set(
            _notificationDto.toJson(),
          );
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteNotification(UniqueId id) async {
    try {
      await _firestore.notificationCollection.doc(id.getOrCrash()).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteUserNotifications() async {
    // TODO: implement deleteUserNotifications
    throw UnimplementedError();
  }

  Either<Failure, Unit> onFirebaseException(FirebaseException e) {
    _logger.e("FirebaseException: ${e.message}");
    return left(
      Failure.coreData(
        CoreDataFailure.serverError(errorString: "FirebaseException: ${e.message}"),
      ),
    );
  }

  Failure onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else {
      _logger.e("Unknown server error:  ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      );
    }
  }
}
