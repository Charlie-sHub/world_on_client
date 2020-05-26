import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class LogInGoogle implements AsyncUseCase<Unit, NoParams> {
  final AuthenticationRepository repository;

  const LogInGoogle(this.repository);

  @override
  Future<Either<Failure, Unit>> call(NoParams params) {
    return repository.logInGoogle();
  }
}
