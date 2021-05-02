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
import 'package:worldon/data/core/models/experience/experience_fields.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';
import 'package:worldon/data/core/models/tag/tag_fields.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';
import 'package:worldon/data/core/models/user/user_fields.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(as: SearchRepositoryInterface, env: [Environment.prod])
class ProductionSearchRepository implements SearchRepositoryInterface {
  final _logger = Logger();
  final FirebaseFirestore _firestore;

  ProductionSearchRepository(this._firestore);

  // TODO: Find a better way to filter the results
  // Quite annoying that Firestore doesn't support filtering by substring
  // The current way of doing it is completely un-scalable
  // hopefully it will work for the tests
  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByTitle(SearchTerm title) async* {
    yield* _firestore.experienceCollection.orderBy("title").snapshots().map(
      (snapshot) {
        final _resultList = snapshot.docs.where(
          (_querySnapshot) {
            final String _title = _querySnapshot.get(ExperienceFields.title).toString();
            return _title.toLowerCase().contains(
                  title.getOrCrash().toLowerCase(),
                );
          },
        );
        final _limitedResults = _resultList.take(50);
        return _limitedResults.map(
          (document) => ExperienceDto.fromFirestore(document).toDomain(),
        );
      },
    ).map(
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
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchSearchTagsByName(SearchTerm name) async* {
    yield* _firestore.tagCollection.orderBy("name").snapshots().map(
      (snapshot) {
        final _resultList = snapshot.docs.where(
          (element) {
            final String _name = element.get(TagFields.name).toString();
            return _name.toLowerCase().contains(
                  name.getOrCrash().toLowerCase(),
                );
          },
        );
        final _limitedResults = _resultList.take(100);
        return _limitedResults.map(
          (document) => TagDto.fromFirestore(document).toDomain(),
        );
      },
    ).map(
      (tags) {
        if (tags.isNotEmpty) {
          return right<Failure, KtList<Tag>>(
            tags.toImmutableList(),
          );
        } else {
          return left<Failure, KtList<Tag>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
      (error) => left(onError(error)),
    );
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchSearchUsersByName(SearchTerm name) async* {
    yield* _firestore.userCollection.orderBy("name").snapshots().map(
      (snapshot) {
        final _resultList = snapshot.docs.where(
          (element) {
            final String _name = element.get(UserFields.name).toString();
            return _name.toLowerCase().contains(
                  name.getOrCrash().toLowerCase(),
                );
          },
        );
        final _limitedResults = _resultList.take(100);
        return _limitedResults.map(
          (document) => UserDto.fromFirestore(document).toDomain(),
        );
      },
    ).map(
      (users) {
        if (users.isNotEmpty) {
          return right<Failure, KtList<User>>(
            users.toImmutableList(),
          );
        } else {
          return left<Failure, KtList<User>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
      (error) => left(onError(error)),
    );
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchSearchUsersByUserName(SearchTerm username) async* {
    yield* _firestore.userCollection.orderBy("username").snapshots().map(
      (snapshot) {
        final _resultList = snapshot.docs.where(
          (element) {
            final String _username = element.get(UserFields.username).toString();
            return _username.toLowerCase().contains(
                  username.getOrCrash().toLowerCase(),
                );
          },
        );
        final _limitedResults = _resultList.take(100);
        return _limitedResults.map(
          (document) => UserDto.fromFirestore(document).toDomain(),
        );
      },
    ).map(
      (users) {
        if (users.isNotEmpty) {
          return right<Failure, KtList<User>>(
            users.toImmutableList(),
          );
        } else {
          return left<Failure, KtList<User>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
      (error) => left(onError(error)),
    );
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByTags(TagSet tags) async* {
    if (tags.getOrCrash().isNotEmpty()) {
      final _auxTagList = tags.getOrCrash().toList().asList();
      final _iterableOfIdLists = partition(
        _auxTagList,
        10,
      );
      final _combinedStreamList = _iterableOfIdLists
          .map(
            (_idList) => _firestore.experienceCollection
                .where(
                  ExperienceFields.tagsIds,
                  arrayContainsAny: _idList,
                )
                .orderBy(
                  ExperienceFields.creationDate,
                  descending: true,
                )
                .snapshots(),
          )
          .toList();
      yield* CombineLatestStream(
        _combinedStreamList,
        (List<QuerySnapshot> values) {
          final _experienceList = <Experience>[];
          for (final _snapshot in values) {
            for (final document in _snapshot.docs) {
              final _experience = ExperienceDto.fromFirestore(document).toDomain();
              _experienceList.add(_experience);
            }
          }
          return _experienceList.take(50);
        },
      ).map(
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
    } else {
      yield* Stream.value(
        left(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        ),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByDifficulty(Difficulty difficulty) async* {
    yield* _firestore.experienceCollection
        .where(
          ExperienceFields.difficulty,
          isEqualTo: difficulty.getOrCrash(),
        )
        .limit(50)
        .orderBy("difficulty")
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
  }

  Failure onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else if (error is AssertionError) {
      _logger.e("Failed assertion error");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Failed assertion error"),
      );
    } else {
      _logger.e("Unknown server error, type: ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      );
    }
  }
}
