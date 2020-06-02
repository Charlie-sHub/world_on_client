import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

/// [UseCase] for direct World On Login
class LogIn implements AsyncUseCase<User, Params> {
  final AuthenticationRepository _repository;

  const LogIn(this._repository);

  @override
  Future<Either<Failure, User>> call(Params params) async {
    return _repository.logIn(params.user);
  }
}

class Params {
  final User user;

  Params({@required this.user});
}
