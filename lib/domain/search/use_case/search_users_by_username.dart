import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(env: Environment.prod)
class SearchUsersByUsername implements StreamUseCase<KtSet<User>, Params> {
  final SearchRepositoryInterface _repository;

  SearchUsersByUsername(this._repository);

  @override
  Stream<Either<Failure, KtSet<User>>> call(Params params) async* {
    yield* _repository.searchUsersByUserName(params.username);
  }
}

class Params {
  final SearchTerm username;

  Params({@required this.username});
}
