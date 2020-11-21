import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/main_feed/repository/main_feed_repository_interface.dart';

@LazySingleton(as: MainFeedRepositoryInterface, env: [Environment.prod])
class ProductionMainFeedRepository implements MainFeedRepositoryInterface {
  final _logger = Logger();
  final FirebaseFirestore _firestore;

  ProductionMainFeedRepository(this._firestore);

  @override
  Stream<Either<Failure, KtList<Experience>>> watchFeed() async* {
    final _userDocument = await _firestore.userDocument();
    final _userDto = UserDto.fromFirestore(await _userDocument.get());
    // TODO: Order by creation date
    // Gotta solve the dates issue first
    if (_userDto.followedUsersIds.isNotEmpty) {
      yield* _firestore.experienceCollection
          .where(
            "creatorId",
            whereIn: _userDto.followedUsersIds.toList(),
          )
          .snapshots()
        .map(
          (snapshot) =>
          snapshot.docs.map(
              (document) => ExperienceDto.fromFirestore(document).toDomain(),
          ),
      )
        .map(
          (experiences) {
          if (experiences.isNotEmpty) {
            return right<Failure, KtList<Experience>>(
              experiences.toImmutableList(),
            );
          } else {
            return left<Failure, KtList<Experience>>(
              const Failure.coreData(
                CoreDataFailure.notFoundError(),
              ),
            );
          }
        },
      ).onErrorReturnWith(
          (error) =>
          left(
            onError(error),
          ),
      );
    } else {
      // Not sure about creating a stream out of nowhere, but it's the best solution for now
      yield* Stream.value(
        left(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        ),
      );
    }
  }

  Failure onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else {
      _logger.e("Unknown server error: ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      );
    }
  }
}
