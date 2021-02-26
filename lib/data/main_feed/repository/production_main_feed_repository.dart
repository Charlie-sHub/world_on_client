import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:quiver/iterables.dart';
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
    if (_userDto.followedUsersIds.isNotEmpty) {
      final _auxListOfIdLists = partition(_userDto.followedUsersIds, 10);
      yield* _firestore.experienceCollection
          .where(
            "creatorId",
            whereIn: _auxListOfIdLists.first,
          )
          .orderBy(
            "creationDate",
            descending: true,
          )
          .snapshots()
          .map(
          (snapshot) => snapshot.docs.map(
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
        (error) => left(onError(error)),
      );
      // TODO: Try to make it work without limit
      // Maybe RxDart has a way to combine N number of streams
      // Or i could use combine streams of 6 or perhaps more streams, that should be enough
      /*
        final List<Stream<QuerySnapshot>> _combinedStreamList = [];
        for (final _idList in _auxListOfIdLists) {
          _combinedStreamList.add(
            _firestore.experienceCollection
                .where(
                  "creatorId",
                  whereIn: _idList,
                )
                .orderBy(
                  "creationDate",
                  descending: true,
                )
                .snapshots(),
            // How to catch errors?
          );
        } //get a list of the streams, which will have 10 each.

        final _mergedQuerySnapshot = CombineLatestStream.list(_combinedStreamList);
        //now we combine all the streams....but it'll be a list of QuerySnapshots.

        //and you'll want to look closely at the map, as it iterates, consolidates and returns as a single stream of List<AttendeeData>
        final List<QuerySnapshot> _snapshotList = [];
        _mergedQuerySnapshot.map((snapshots) => _snapshotList.addAll(snapshots));
        final _listOfEither = _snapshotList
            .map(
          (snapshot) => snapshot.docs.map(
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
        );
        yield* Stream.fromIterable(_listOfEither);
        */
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
