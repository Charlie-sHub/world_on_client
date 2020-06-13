import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

class SearchUsersByName implements AsyncUseCase<Set<User>, Params> {
  final SearchRepositoryInterface _repository;

  SearchUsersByName(this._repository);

  @override
  Future<Either<Failure, Set<User>>> call(Params params) async {
    return _repository.searchUsersByName(params.name);
  }
}

class Params {
  final Name name;

  Params({@required this.name});
}
