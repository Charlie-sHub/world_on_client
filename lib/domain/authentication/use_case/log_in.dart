import 'package:dartz/dartz.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

/// [UseCase] for direct World On Login
class LogIn implements AsyncUseCase<User, Params> {
  final AuthenticationRepository repository;

  LogIn(this.repository);

  @override
  Future<Either<Failure, User>> call(Params params) async {
    return await repository.logInUser(params.user);
  }
}

class Params {
  final User user;

  Params({this.user});
}
