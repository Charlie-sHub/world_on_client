import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class LogInGoogle implements AsyncUseCase<Unit, NoParams> {
  final AuthenticationRepository _repository;

  const LogInGoogle(this._repository);

  @override
  Future<Either<Failure, Unit>> call(NoParams params) {
    return _repository.logInGoogle();
  }
}
