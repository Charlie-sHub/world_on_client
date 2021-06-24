import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:logger/logger.dart';
import 'package:quiver/iterables.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';
import 'package:worldon/data/core/models/tag/tag_fields.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';

@LazySingleton(as: TagManagementRepositoryInterface, env: [Environment.prod])
class ProductionTagManagementRepository implements TagManagementRepositoryInterface {
  final Logger _logger;

  final FirebaseFirestore _firestore;

  ProductionTagManagementRepository(
    this._firestore,
    this._logger,
  );

  @override
  Future<Either<Failure, Unit>> createTag(Tag tag) async {
    try {
      final _oldTag = await _firestore.tagCollection
          .where(
            TagFields.name,
            isEqualTo: tag.name.getOrCrash(),
          )
          .get();
      if (_oldTag.docs.isEmpty) {
        final _tagDto = TagDto.fromDomain(tag);
        _firestore.tagCollection
            .doc(
              tag.id.getOrCrash(),
            )
            .set(
              _tagDto,
            );
        return right(unit);
      } else {
        return left(
          Failure.coreData(
            CoreDataFailure.nameAlreadyInUse(
              name: tag.name,
            ),
          ),
        );
      }
    } catch (error, _) {
      return left(
        _onError(error),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> editTag(Tag tag) async {
    try {
      final _tagDto = TagDto.fromDomain(tag);
      _firestore.tagCollection
          .doc(
            _tagDto.id,
          )
          .update(
            _tagDto.toJson(),
          );
      return right(unit);
    } catch (error, _) {
      return left(
        _onError(error),
      );
    }
  }

  @override
  Future<Either<Failure, Tag>> getTag(UniqueId id) async {
    try {
      final _tagDocument = await _firestore.tagCollection.doc(id.getOrCrash()).get();
      final _tag = _tagDocument.data()!.toDomain();
      return right(_tag);
    } catch (error, _) {
      return left(
        _onError(error),
      );
    }
  }

  // Why is this method even a thing?
  @override
  Future<Either<Failure, KtSet<Tag>>> getTags(Set<UniqueId> tagsUniqueIds) async {
    final _tagSet = <Tag>{};
    final _tagIds = tagsUniqueIds
        .map(
          (id) => id.getOrCrash(),
        )
        .toSet();
    if (_tagIds.isNotEmpty) {
      try {
        final _iterableOfIdLists = partition(
          _tagIds,
          10,
        );
        for (final _idList in _iterableOfIdLists) {
          final _querySnapshot = await _firestore.tagCollection
              .where(
                TagFields.id,
                whereIn: _idList,
              )
              .orderBy(
                TagFields.name,
              )
              .get();
          final _tagsFromQuery = _querySnapshot.docs.map(
            (_documentSnapshot) => _documentSnapshot.data().toDomain(),
          );
          _tagSet.addAll(_tagsFromQuery);
        }
        return right(
          _tagSet.toImmutableSet(),
        );
      } catch (error, _) {
        return left(
          _onError(error),
        );
      }
    } else {
      return right(
        const KtSet<Tag>.empty(),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> removeTag(UniqueId id) async {
    try {
      _firestore.tagCollection.doc(id.getOrCrash()).delete();
      return right(unit);
    } catch (error, _) {
      return left(
        _onError(error),
      );
    }
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
