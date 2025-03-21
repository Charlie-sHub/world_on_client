import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart' hide Notification;
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/notification/notification_dto.dart';
import 'package:worldon/data/core/models/notification/notification_fields.dart';
import 'package:worldon/domain/core/entities/notification/notification.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/notifications/repository/notification_repository_interface.dart';

@LazySingleton(as: NotificationRepositoryInterface, env: [Environment.prod])
class ProductionNotificationRepository implements NotificationRepositoryInterface {
  final Logger _logger;
  final FirebaseFirestore _firestore;

  ProductionNotificationRepository(
    this._firestore,
    this._logger,
  );

  @override
  Future<Either<Failure, Unit>> checkNotification(UniqueId id) async {
    try {
      _firestore.notificationCollection
          .doc(
        id.getOrCrash(),
      )
          .update(
        {
          NotificationFields.seen: true,
        },
      );
      return right(unit);
    } catch (error, _) {
      return left(
        _onError(error),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<Notification>>> watchNotifications() async* {
    final _userDocumentReference = await _firestore.currentUserReference();
    yield* _firestore.notificationCollection
        .where(
          NotificationFields.receiverId,
          isEqualTo: _userDocumentReference.id,
        )
        .orderBy(
          NotificationFields.creationDate,
          descending: true,
        )
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (document) => document.data().toDomain(),
          ),
        )
        .map(
      (_notifications) {
        if (_notifications.isNotEmpty) {
          return right<Failure, KtList<Notification>>(
            _notifications.toImmutableList(),
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
      (error, _) => left(
        _onError(error),
      ),
    );
  }

  @override
  Stream<Either<Failure, bool>> watchIfNewNotifications() async* {
    final _userDocumentReference = await _firestore.currentUserReference();
    yield* _firestore.notificationCollection
        .where(
          NotificationFields.receiverId,
          isEqualTo: _userDocumentReference.id,
        )
        .where(
          NotificationFields.seen,
          isEqualTo: false,
        )
        .limit(1)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.isNotEmpty,
        )
        .map(
          (_newNotifications) => right<Failure, bool>(_newNotifications),
        )
        .onErrorReturnWith(
          (error, _) => left(
            _onError(error),
          ),
        );
  }

  @override
  Future<Either<Failure, Unit>> sendNotification(Notification notification) async {
    try {
      final _notificationDto = NotificationDto.fromDomain(notification);
      _firestore.notificationCollection
          .doc(
            notification.id.getOrCrash(),
          )
          .set(
            _notificationDto,
          );
      return right(unit);
    } catch (error, _) {
      return left(
        _onError(error),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteNotification(UniqueId id) async {
    try {
      _firestore.notificationCollection.doc(id.getOrCrash()).delete();
      return right(unit);
    } catch (error, _) {
      return left(
        _onError(error),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteUserNotifications() async {
    // TODO: implement deleteUserNotifications
    throw UnimplementedError();
  }

  Failure _onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else {
      _logger.e("Unknown server error:  ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown data layer error"),
      );
    }
  }
}
