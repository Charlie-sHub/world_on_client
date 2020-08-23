import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/moor/converters/moor_experience_to_domain_experience.dart';
import 'package:worldon/data/core/moor/daos/moor_experiences_dao/moor_experience_with_relations.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';

Stream<Either<Failure, KtList<Experience>>> createExperienceListStream(Stream<List<MoorExperienceWithRelations>> stream, Logger logger) => stream.map(
      (_moorExperienceList) {
        if (_moorExperienceList != null) {
          return right<Failure, KtList<Experience>>(
            _moorExperienceList
                .map(
                  (_moorExperienceWithRelations) => moorExperienceToDomainExperience(_moorExperienceWithRelations),
                )
                .toImmutableList()
                .sortedBy(
                  (_experience) => _experience.creationDate.getOrCrash(),
                ),
          );
        } else {
          return left<Failure, KtList<Experience>>(
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
