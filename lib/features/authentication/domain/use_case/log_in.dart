import 'package:dartz/dartz.dart';
import 'package:worldon/core/common/domain/entities/user.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/core/use_case/use_case.dart';
import 'package:worldon/features/authentication/domain/repository/authentication_repository.dart';

class LogIn implements AsyncUseCase<User, Params> {
  final AuthenticationRepository repository;

  LogIn(this.repository);

  @override
  Future<Either<Failure, User>> call(Params params) async {
    return repository.logInUser(params.user);
  }
}

class Params {
  final User user;

  Params({this.user});
}
