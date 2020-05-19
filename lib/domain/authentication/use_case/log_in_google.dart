import 'package:dartz/dartz.dart';
import 'package:worldon/domain/authentication/failures/authentication_failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class LogInGoogle implements AsyncUseCase<Unit, NoParams> {
  final AuthenticationRepository repository;

  LogInGoogle(this.repository);

  @override
  Future<Either<AuthenticationFailure, Unit>> call(NoParams params) {
    return repository.logInGoogle();
  }
}
