import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:quiver/iterables.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/algolia/algolia_helpers.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/experience/experience_dto.dart';
import 'package:worldon/data/core/models/experience/experience_fields.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(as: SearchRepositoryInterface, env: [Environment.prod])
class ProductionSearchRepository implements SearchRepositoryInterface {
  final Logger _logger;
  final FirebaseFirestore _firestore;

  // TODO: Use environment variables instead of hard coding the apiKey and applicationId
  Algolia algolia = const Algolia.init(
    applicationId: "F2D62LNQIN",
    apiKey: "8e7f2dd6d6d42450a4b3d12388b96207",
  );

  ProductionSearchRepository(
    this._firestore,
    this._logger,
  );

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesByTitle(SearchTerm term) async* {
    final _results = <Experience>[];
    try {
      final _algoliaQuery = algolia.queryExperienceIndex().query(term.getOrCrash()).setLength(40);
      final _querySnapshot = await _algoliaQuery.getObjects();
      for (final _queryResult in _querySnapshot.hits) {
        final _id = _queryResult.objectID;
        final _documentReference = await _firestore.experienceDocumentReference(_id);
        final _experienceDocument = await _documentReference.get();
        final _experience = _experienceDocument.data()!.toDomain();
        _results.add(_experience);
      }
      if (_results.isNotEmpty) {
        yield right<Failure, KtList<Experience>>(
          _results.toImmutableList(),
        );
      } else {
        yield left<Failure, KtList<Experience>>(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        );
      }
    } catch (error, _) {
      yield left<Failure, KtList<Experience>>(
        _onError(error),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchTagsByName(SearchTerm term) async* {
    final _results = <Tag>[];
    try {
      final _algoliaQuery = algolia.queryTagIndex().query(term.getOrCrash()).setLength(50);
      final _querySnapshot = await _algoliaQuery.getObjects();
      for (final _queryResult in _querySnapshot.hits) {
        final _id = _queryResult.objectID;
        final _tagDocument = await _firestore.tagCollection.doc(_id).get();
        final _tag = _tagDocument.data()!.toDomain();
        _results.add(_tag);
      }
      if (_results.isNotEmpty) {
        yield right<Failure, KtList<Tag>>(
          _results.toImmutableList(),
        );
      } else {
        yield left<Failure, KtList<Tag>>(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        );
      }
    } catch (error, _) {
      yield left<Failure, KtList<Tag>>(
        _onError(error),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchUsersByName(SearchTerm term) async* {
    final _results = <User>[];
    try {
      final _algoliaQuery = algolia.queryUserIndex().query(term.getOrCrash()).setLength(50);
      final _querySnapshot = await _algoliaQuery.getObjects();
      for (final _queryResult in _querySnapshot.hits) {
        final _id = _queryResult.objectID;
        final _userDocument = await _firestore.userCollection.doc(_id).get();
        final _user = _userDocument.data()!.toDomain();
        _results.add(_user);
      }
      if (_results.isNotEmpty) {
        yield right<Failure, KtList<User>>(
          _results.toImmutableList(),
        );
      } else {
        yield left<Failure, KtList<User>>(
          const Failure.coreData(
            CoreDataFailure.notFoundError(),
          ),
        );
      }
    } catch (error, _) {
      yield left<Failure, KtList<User>>(
        _onError(error),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesByTags(TagSet tags) async* {
    final _tags = tags.getOrCrash();
    if (_tags.isNotEmpty()) {
      final _auxTagList = _tags.toList().asList();
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
        (List<QuerySnapshot<ExperienceDto>> values) {
          final _documentList = <QueryDocumentSnapshot<ExperienceDto>>[];
          for (final _snapshot in values) {
            for (final _document in _snapshot.docs) {
              _documentList.add(_document);
            }
          }
          final _filteredList = _documentList.take(50);
          final _experienceList = _filteredList.map(
            (_document) => _document.data().toDomain(),
          );
          return _experienceList;
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
        (error, _) => left(_onError(error)),
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
  Stream<Either<Failure, KtList<Experience>>> watchExperiencesByDifficulty(Difficulty difficulty) async* {
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
            (document) => document.data().toDomain(),
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
      (error, _) => left(_onError(error)),
    );
  }

  Failure _onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
      );
    } else if (error is AlgoliaError) {
      _logger.e("Algolia error: ${error.error}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Algolia error"),
      );
    } else if (error is AssertionError) {
      _logger.e("Failed assertion error");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Failed assertion error"),
      );
    } else {
      _logger.e("Unknown server error, type: ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown data layer error"),
      );
    }
  }
}
