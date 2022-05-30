import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class LogInGoogle implements AsyncUseCase<Option<User>, NoParams> {
  final AuthenticationRepositoryInterface _repository;

  LogInGoogle(this._repository);

  @override
  Future<Either<Failure, Option<User>>> call(
    NoParams params,
  ) =>
      _repository.logInGoogle();
}
