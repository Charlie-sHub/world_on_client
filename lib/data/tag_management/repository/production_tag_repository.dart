import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';

@LazySingleton(as: TagCoreRepositoryInterface, env: [Environment.prod])
class ProductionTagRepository implements TagCoreRepositoryInterface {
  final _logger = Logger();

  final FirebaseFirestore _firestore;

  ProductionTagRepository(this._firestore);

  @override
  Future<Either<Failure, Unit>> addTagToInterests(Tag tag) async {
    try {
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "interestsIds": FieldValue.arrayUnion([tag.id.getOrCrash()]),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Future<Either<Failure, Unit>> dismissTagFromInterests(Tag tag) async {
    try {
      final _userDocument = await _firestore.userDocument();
      await _userDocument.update(
        {
          "interestsIds": FieldValue.arrayRemove([tag.id.getOrCrash()]),
        },
      );
      return right(unit);
    } on FirebaseException catch (e) {
      return onFirebaseException(e);
    }
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchAllTags() {
    // TODO: implement getAllTags
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> getCreator(UniqueId id) {
    // TODO: implement getCreator
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtList<Tag>>> watchTagsByCreator(UniqueId id) {
    // TODO: implement getTagsByCreator
    throw UnimplementedError();
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
