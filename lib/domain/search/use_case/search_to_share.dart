import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class SearchToShare implements AsyncUseCase<KtList<User>, Params> {
  final SearchRepositoryInterface _repository;

  SearchToShare(this._repository);

  @override
  Future<Either<Failure, KtList<User>>> call(Params params) async {
    // If the term is empty then it will return all results
    if (params.searchTerm.isValid()) {
      return _repository.searchShareableUsers(params.searchTerm);
    } else {
      return _repository.getShareableUsers();
    }
  }
}

class Params {
  final SearchTerm searchTerm;

  Params({required this.searchTerm});
}
