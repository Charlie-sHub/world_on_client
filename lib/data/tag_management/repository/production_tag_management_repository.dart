import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:logger/logger.dart';
import 'package:quiver/iterables.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';
import 'package:worldon/data/core/models/tag/tag_fields.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';

@LazySingleton(as: TagManagementRepositoryInterface, env: [Environment.prod])
class ProductionTagManagementRepository implements TagManagementRepositoryInterface {
  final _logger = Logger();

  final FirebaseFirestore _firestore;

  ProductionTagManagementRepository(this._firestore);

  @override
  Future<Either<Failure, Unit>> createTag(Tag tag) async {
    try {
      // Is this the best way to check if the tag already exists?
      final _aux = await _firestore.tagCollection
          .where(
            TagFields.name,
            isEqualTo: tag.name.getOrCrash(),
          )
          .get();
      if (_aux.docs.isEmpty) {
        final _tagDto = TagDto.fromDomain(tag);
        await _firestore.tagCollection.doc(tag.id.getOrCrash()).set(_tagDto.toJson());
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
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> editTag(Tag tag) async {
    try {
      final _tagDto = TagDto.fromDomain(tag);
      await _firestore.tagCollection
          .doc(
            tag.id.getOrCrash(),
          )
          .update(
            _tagDto.toJson(),
          );
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Future<Either<Failure, Tag>> getTag(UniqueId id) async {
    try {
      final _tagDocument = await _firestore.tagCollection.doc(id.getOrCrash()).get();
      final _tag = TagDto.fromFirestore(_tagDocument).toDomain();
      return right(_tag);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

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
            (_documentSnapshot) => TagDto.fromFirestore(_documentSnapshot).toDomain(),
          );
          _tagSet.addAll(_tagsFromQuery);
        }
        return right(
          _tagSet.toImmutableSet(),
        );
      } on FirebaseException catch (e) {
        return onFirebaseException(e);
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
      await _firestore.tagCollection.doc(id.getOrCrash()).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  Either<Failure, T> onFirebaseException<T>(FirebaseException e) {
    _logger.e("FirebaseException: ${e.message}");
    return left(
      const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown server error"),
      ),
    );
  }
}
