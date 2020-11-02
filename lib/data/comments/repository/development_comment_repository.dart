import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/create_stream_of_either.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_server_error_failure.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_comment.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/simulate_failure_or_unit.dart';
import 'package:worldon/data/core/moor/converters/domain_comment_to_moor_comment.dart';
import 'package:worldon/data/core/moor/converters/moor_comment_to_domain_comment.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';
import 'package:worldon/domain/core/entities/comment/comment.dart';
import 'package:worldon/domain/core/validation/objects/comment_content.dart';
import 'package:worldon/injection.dart';

@LazySingleton(as: CommentRepositoryInterface, env: [Environment.dev])
class DevelopmentCommentRepository implements CommentRepositoryInterface {
  final _random = Random();
  final _database = getIt<Database>();
  final _logger = Logger();

  @override
  Stream<Either<Failure, KtList<Comment>>> watchExperienceComments(int experienceId) async* {
    yield* _database.moorCommentsDao.watchExperienceComments(experienceId).asyncMap(
      (_moorCommentList) {
        if (_moorCommentList != null) {
          return right<Failure, KtList<Comment>>(
            _moorCommentList
                .map(
                  (_moorCommentWithMoorUser) => moorCommentToDomainComment(_moorCommentWithMoorUser),
                )
                .toImmutableList()
                .sortedBy(
                  (comment) => comment.creationDate.getOrCrash(),
                ),
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
      (_error) {
        final _errorMessage = "Development repository error: $_error";
        _logger.e(_errorMessage);
        return left(
          Failure.coreData(
            CoreDataFailure.serverError(
              errorString: _errorMessage,
            ),
          ),
        );
      },
    );
  }

  @override
  Future<Either<Failure, Unit>> postComment(Comment comment) async {
    try {
      final _moorComment = domainCommentToMoorComment(comment);
      await _database.moorCommentsDao.insertComment(_moorComment);
      return right(unit);
    } catch (exception) {
      _logger.e("Error with moor database: $exception");
      return left(
        Failure.coreData(
          CoreDataFailure.serverError(
            errorString: "Development repository error $exception",
          ),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> editComment(Comment comment) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }

  @override
  Stream<Either<Failure, KtSet<Comment>>> watchUserComments(int userId) {
    Either<Failure, KtSet<Comment>> _either;
    if (_random.nextBool()) {
      _either = right(
        KtSet.of(
          getValidComment(),
          getValidComment().copyWith(
            id: 2,
            content: CommentContent("Phasellus elementum mollis ipsum non auctor."),
          ),
        ),
      );
    } else {
      _either = left(getServerErrorFailure());
    }
    return createStreamOfEither(_either);
  }

  @override
  Future<Either<Failure, Unit>> removeComment(int id) {
    return simulateFailureOrUnit(auxBool: _random.nextBool());
  }
}
