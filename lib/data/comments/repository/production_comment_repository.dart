import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/firebase_helpers.dart';
import 'package:worldon/data/core/models/comment/comment_dto.dart';
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
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (document) => CommentDto.fromFirestore(document).toDomain(),
          ),
        )
        .map(
          (comments) => right<Failure, KtList<Comment>>(
            comments.toImmutableList(),
          ),
        )
        .onErrorReturnWith(
      (error) {
        if (error is FirebaseException) {
          _logger.e("FirebaseException: ${error.message}");
          return left(
            Failure.coreData(
              CoreDataFailure.serverError(errorString: "Firebase error: ${error.message}"),
            ),
          );
        } else {
          _logger.e("Unknown server error");
          return left(
            const Failure.coreData(
              CoreDataFailure.serverError(errorString: "Unknown server error"),
            ),
          );
        }
      },
    );
  }

  @override
  Future<Either<Failure, Unit>> postComment(Comment comment) async {
    try {
      final _commentDto = CommentDto.fromDomain(comment);
      await _firestore.experienceCollection.doc(_commentDto.experienceId).commentCollection.add(
            _commentDto.toJson(),
          );
      return right(unit);
    } on FirebaseException catch (e) {
      _logger.e("FirebaseException: ${e.message}");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(errorString: "FirebaseException: ${e.message}"),
        ),
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
    } on FirebaseException catch (e) {
      _logger.e("FirebaseException: ${e.message}");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(errorString: "FirebaseException: ${e.message}"),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> removeComment(UniqueId id) {
    // TODO: implement removeComment
    // Seems it needs the experience id too, to get the experience doc and from there the comments collection
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, KtSet<Comment>>> watchUserComments(UniqueId userId) {
    // TODO: implement getUserComments
    throw UnimplementedError();
  }
}
