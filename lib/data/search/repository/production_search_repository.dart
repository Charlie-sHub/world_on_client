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
import 'package:worldon/data/core/models/tag/tag_dto.dart';
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

  // TODO: Use environment variables instead of hard coding the apikey and applicationId
  Algolia algolia = const Algolia.init(
    applicationId: "F2D62LNQIN",
    apiKey: "8e7f2dd6d6d42450a4b3d12388b96207",
  );

  ProductionSearchRepository(this._firestore);

  @override
  Stream<Either<Failure, KtList<Experience>>> watchSearchExperiencesByTitle(SearchTerm title) async* {
    final List<Experience> _results = [];
    try {
      final _algoliaQuery = algolia.queryExperienceIndex().query(title.getOrCrash()).setLength(50);
      final _querySnapshot = await _algoliaQuery.getObjects();
      for (final _queryResult in _querySnapshot.hits) {
        final _id = _queryResult.objectID;
        final _documentReference = await _firestore.experienceDocumentReference(_id);
        final _experienceDocument = await _documentReference.get();
        final _experience = ExperienceDto.fromFirestore(_experienceDocument).toDomain();
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
    } catch (error) {
      yield left<Failure, KtList<Experience>>(
        onError(error),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchSearchTagsByName(SearchTerm name) async* {
    final List<Tag> _results = [];
    try {
      final _algoliaQuery = algolia.queryTagIndex().query(name.getOrCrash()).setLength(50);
      final _querySnapshot = await _algoliaQuery.getObjects();
      for (final _queryResult in _querySnapshot.hits) {
        final _id = _queryResult.objectID;
        final _tagDocument = await _firestore.tagCollection.doc(_id).get();
        final _tag = TagDto.fromFirestore(_tagDocument).toDomain();
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
    } catch (error) {
      yield left<Failure, KtList<Tag>>(
        onError(error),
      );
    }
  }

  @override
  Stream<Either<Failure, KtList<User>>> watchSearchUsersByName(SearchTerm name) async* {
    final List<User> _results = [];
    try {
      final _algoliaQuery = algolia.queryUserIndex().query(name.getOrCrash()).setLength(50);
      final _querySnapshot = await _algoliaQuery.getObjects();
      for (final _queryResult in _querySnapshot.hits) {
        final _id = _queryResult.objectID;
        final _userDocument = await _firestore.userCollection.doc(_id).get();
        final _user = UserDto.fromFirestore(_userDocument).toDomain();
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
    } catch (error) {
      yield left<Failure, KtList<User>>(
        onError(error),
      );
    }
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

  @override
  Future<Either<Failure, KtList<User>>> getShareableUsers() async {
    try {
      final _userDto = await _firestore.currentUserDto();
      final _querySnapshot = await _firestore.userCollection
          .where(
            UserFields.followedUsersIds,
            arrayContains: _userDto.id,
          )
          .get();
      final _userList = _querySnapshot.docs.map(
        (_queryDocumentSnapshot) => UserDto.fromFirestore(_queryDocumentSnapshot).toDomain(),
      );
      return right(_userList.toImmutableList());
    } catch (error) {
      return left(
        onError(error),
      );
    }
  }

  @override
  Future<Either<Failure, KtList<User>>> searchShareableUsers(SearchTerm name) async {
    try {
      final _searchString = name.getOrCrash().toLowerCase();
      final _userDocument = await _firestore.currentUserDocumentReference();
      final _currentUserDto = UserDto.fromFirestore(await _userDocument.get());
      final _querySnapshot = await _firestore.userCollection
          .where(
            UserFields.followedUsersIds,
            arrayContains: _currentUserDto.id,
          )
          .get();
      final _userDtoList = _querySnapshot.docs.map(
        (_queryDocumentSnapshot) => UserDto.fromFirestore(_queryDocumentSnapshot),
      );
      final _filteredList = _userDtoList.where(
        (_userDto) => _userDto.name.toLowerCase().contains(_searchString) || _userDto.username.toLowerCase().contains(_searchString),
      );
      final _userList = _filteredList
          .map(
            (_userDto) => _userDto.toDomain(),
          )
          .toList();
      return right(_userList.toImmutableList());
    } catch (error) {
      return left(
        onError(error),
      );
    }
  }

  Failure onError(dynamic error) {
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
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      );
    }
  }
}
