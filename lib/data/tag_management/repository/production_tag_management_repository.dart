import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/data/core/models/tag/tag_dto.dart';
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
      final _tagDto = TagDto.fromDomain(tag);
      await _firestore.tagCollection.add(_tagDto.toJson());
      return right(unit);
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
