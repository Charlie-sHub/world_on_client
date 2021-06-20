import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase/firebase_helpers.dart';
import 'package:worldon/data/core/models/comment/comment_dto.dart';
import 'package:worldon/data/core/models/experience/experience_fields.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

@LazySingleton(as: CommentRepositoryInterface, env: [Environment.prod])
class ProductionCommentRepository implements CommentRepositoryInterface {
  final _logger = Logger();

  final FirebaseFirestore _firestore;

  ProductionCommentRepository(this._firestore);

  @override
  Stream<Either<Failure, KtList<Comment>>> watchExperienceComments(UniqueId experienceId) async* {
    yield* _firestore.experienceCollection
        .doc(experienceId.getOrCrash())
        .commentCollection
        .orderBy(
          ExperienceFields.creationDate,
          descending: true,
        )
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (document) => CommentDto.fromFirestore(document).toDomain(),
          ),
        )
        .map(
      (comments) {
        if (comments.isNotEmpty) {
          return right<Failure, KtList<Comment>>(
            comments.toImmutableList(),
          );
        } else {
          return left<Failure, KtList<Comment>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
      (error) {
        return left(
          _onError(error),
        );
      },
    );
  }

  @override
  Future<Either<Failure, Unit>> postComment(Comment comment) async {
    try {
      final _commentDto = CommentDto.fromDomain(comment);
      await _firestore.experienceCollection
          .doc(
            _commentDto.experienceId,
          )
          .commentCollection
          .doc(
            comment.id.getOrCrash(),
          )
          .set(
            _commentDto.toJson(),
          );
      return right(unit);
    } catch (error) {
      return left(
        _onError(error),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> editComment(Comment comment) async {
    try {
      final _commentDto = CommentDto.fromDomain(comment);
      await _firestore.experienceCollection
          .doc(
            _commentDto.experienceId,
          )
          .commentCollection
          .doc(
            comment.id.getOrCrash(),
          )
          .update(
            _commentDto.toJson(),
          );
      return right(unit);
    } catch (error) {
      return left(
        _onError(error),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> removeComment(UniqueId experienceId, UniqueId commentId) async {
    try {
      await _firestore.experienceCollection
          .doc(
            experienceId.getOrCrash(),
          )
          .commentCollection
          .doc(
            commentId.getOrCrash(),
          )
          .delete();
      return right(unit);
    } catch (error) {
      return left(
        _onError(error),
      );
    }
  }

  @override
  Stream<Either<Failure, KtSet<Comment>>> watchUserComments(UniqueId userId) {
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
