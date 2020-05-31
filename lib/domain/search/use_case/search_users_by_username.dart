import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/search/repository/search_repository.dart';

class SearchUsersByUsername implements AsyncUseCase<Set<User>, Params> {
  final SearchRepository _repository;

  const SearchUsersByUsername(this._repository);

  @override
  Future<Either<Failure, Set<User>>> call(Params params) async {
    return _repository.searchUsersByUserName(params.username);
  }
}

class Params {
  final String username;

  Params({@required this.username});
}
