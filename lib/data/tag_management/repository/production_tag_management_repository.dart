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
class ProductionTagManagementRepository
    implements TagManagementRepositoryInterface {
  final Logger _logger;

  final FirebaseFirestore _firestore;

  ProductionTagManagementRepository(
    this._firestore,
    this._logger,
  );

  @override
  Future<Either<Failure, Unit>> createTag(Tag tag) async {
    try {
      final oldTag = await _firestore.tagCollection
          .where(
            TagFields.name,
            isEqualTo: tag.name.getOrCrash(),
          )
          .get();
      if (oldTag.docs.isEmpty) {
        final tagDto = TagDto.fromDomain(tag);
        _firestore.tagCollection
            .doc(
              tag.id.getOrCrash(),
            )
            .set(
              tagDto,
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
    } catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Future<Either<Failure, Unit>> editTag(Tag tag) async {
    try {
      final tagDto = TagDto.fromDomain(tag);
      _firestore.tagCollection
          .doc(
            tagDto.id,
          )
          .update(
            tagDto.toJson(),
          );
      return right(unit);
    } catch (error) {
      return left(_onError(error));
    }
  }

  @override
  Future<Either<Failure, Tag>> getTag(UniqueId id) async {
    try {
      final tagDocument =
          await _firestore.tagCollection.doc(id.getOrCrash()).get();
      final tag = tagDocument.data()!.toDomain();
      return right(tag);
    } catch (error) {
      return left(_onError(error));
    }
  }

  // Why is this method even a thing?
  @override
  Future<Either<Failure, KtSet<Tag>>> getTags(
    Set<UniqueId> tagsUniqueIds,
  ) async {
    final tagSet = <Tag>{};
    final tagIds = tagsUniqueIds
        .map(
          (id) => id.getOrCrash(),
        )
        .toSet();
    if (tagIds.isNotEmpty) {
      try {
        final iterableOfIdLists = partition(
          tagIds,
          10,
        );
        for (final idList in iterableOfIdLists) {
          final querySnapshot = await _firestore.tagCollection
              .where(
                TagFields.id,
                whereIn: idList,
              )
              .orderBy(
                TagFields.name,
              )
              .get();
          final tagsFromQuery = querySnapshot.docs.map(
            (documentSnapshot) => documentSnapshot.data().toDomain(),
          );
          tagSet.addAll(tagsFromQuery);
        }
        return right(
          tagSet.toImmutableSet(),
        );
      } catch (error) {
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
    } catch (error) {
      return left(_onError(error));
    }
  }

  Failure _onError(dynamic error) {
    if (error is FirebaseException) {
      _logger.e("FirebaseException: ${error.message}");
      return Failure.coreData(
        CoreDataFailure.serverError(
          errorString: "Firebase error: ${error.message}",
        ),
      );
    } else {
      _logger.e("Unknown server error:  ${error.runtimeType}");
      return const Failure.coreData(
        CoreDataFailure.serverError(errorString: "Unknown data layer error"),
      );
    }
  }
}
