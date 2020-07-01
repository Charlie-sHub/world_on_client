import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(env: Environment.prod)
class SearchUsersByName implements StreamUseCase<Set<User>, Params> {
  final SearchRepositoryInterface _repository;
  
  SearchUsersByName(this._repository);
  
  @override
  Stream<Either<Failure, Set<User>>> call(Params params) async* {
    yield* _repository.searchUsersByName(params.name);
  }
}

class Params {
  final Name name;

  Params({@required this.name});
}
