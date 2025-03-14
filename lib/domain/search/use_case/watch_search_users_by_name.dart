import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchSearchUsersByName implements StreamUseCase<KtList<User>, Params> {
  final SearchRepositoryInterface _repository;

  WatchSearchUsersByName(this._repository);

  @override
  Stream<Either<Failure, KtList<User>>> call(Params params) async* {
    yield* _repository.watchUsersByName(params.name);
  }
}

class Params {
  final SearchTerm name;

  Params({required this.name});
}
