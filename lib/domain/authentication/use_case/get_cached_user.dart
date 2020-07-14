import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/repository/cached_credentials_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: Environment.dev)
class GetCachedUser implements AsyncUseCase<User, NoParams> {
  final CachedCredentialsRepositoryInterface _repository;
  
  GetCachedUser(this._repository);
  
  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return _repository.getCachedUser();
  }
}
