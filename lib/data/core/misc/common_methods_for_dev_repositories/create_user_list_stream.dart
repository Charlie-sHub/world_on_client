import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/data/core/moor/converters/moor_user_to_domain_user.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/domain/core/entities/user/user.dart';

Stream<Either<Failure, KtList<User>>> createUserListStream(Stream<List<MoorUser>> _stream, Logger logger) => _stream.map(
      (_moorUserList) {
        if (_moorUserList != null && _moorUserList.isNotEmpty) {
          return right<Failure, KtList<User>>(
            _moorUserList
                .map(
                  (_moorUser) => moorUserToDomainUser(_moorUser),
                )
                .toImmutableList()
                .sortedBy(
                  (_user) => _user.lastLogin.getOrCrash(),
                ),
          );
        } else {
          return left<Failure, KtList<User>>(
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
