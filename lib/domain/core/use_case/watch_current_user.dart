import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchCurrentUser implements StreamUseCase<User, NoParams> {
  final CoreRepositoryInterface _repository;

  WatchCurrentUser(this._repository);

  @override
  Stream<Either<Failure, User>> call(NoParams params) async* {
    yield* _repository.watchCurrentUser();
  }
}
