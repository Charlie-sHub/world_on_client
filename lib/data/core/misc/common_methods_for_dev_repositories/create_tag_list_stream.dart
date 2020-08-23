import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/moor/converters/moor_tag_to_domain_tag.dart';
import 'package:worldon/data/core/moor/daos/moor_tags_dao/moor_tag_with_moor_user.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';

Stream<Either<Failure, KtList<Tag>>> createTagListStream(Stream<List<MoorTagWithMoorUser>> _stream, Logger logger) => _stream.map(
      (_moorTagList) {
        if (_moorTagList != null) {
          return right<Failure, KtList<Tag>>(
            _moorTagList
                .map(
                  (_moorTagWithCreator) => moorTagToDomainTag(_moorTagWithCreator),
                )
                .toImmutableList()
                .sortedBy(
                  (_tag) => _tag.creationDate.getOrCrash(),
                ),
          );
        } else {
          return left<Failure, KtList<Tag>>(
            const Failure.coreData(
              CoreDataFailure.notFoundError(),
            ),
          );
        }
      },
    ).onErrorReturnWith(
      (_error) {
        final _errorMessage = "Development repository error: $_error";
        logger.e(_errorMessage);
        return left(
          Failure.coreData(
            CoreDataFailure.serverError(
              errorString: _errorMessage,
            ),
          ),
        );
      },
    );
