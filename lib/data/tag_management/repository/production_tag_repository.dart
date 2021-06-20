import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/user/user_fields.dart';
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
      final _userDocument = await _firestore.currentUserReference();
      _userDocument.update(
        {
          UserFields.interestsIds: FieldValue.arrayUnion([tag.id.getOrCrash()]),
        },
      );
      return right(unit);
    } catch (error) {
      return left(
        _onError(error),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> dismissTagFromInterests(Tag tag) async {
    try {
      final _userDocument = await _firestore.currentUserReference();
      _userDocument.update(
        {
          UserFields.interestsIds: FieldValue.arrayRemove([tag.id.getOrCrash()]),
        },
      );
      return right(unit);
    } catch (error) {
      return left(
        _onError(error),
      );
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
