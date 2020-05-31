import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/search/repository/search_repository.dart';

class SearchUsersByName implements AsyncUseCase<Set<User>, Params> {
  final SearchRepository _repository;

  const SearchUsersByName(this._repository);

  @override
  Future<Either<Failure, Set<User>>> call(Params params) async {
    return _repository.searchUsersByName(params.name);
  }
}

class Params {
  final String name;

  Params({@required this.name});
}
