import 'package:dartz/dartz.dart';
import 'package:worldon/core/common/domain/entities/user.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/core/use_case/use_case.dart';
import 'package:worldon/features/authentication/domain/repository/authentication_repository.dart';

class Register implements AsyncUseCase<void, Params> {
  final AuthenticationRepository repository;

  Register(this.repository);

  @override
  Future<Either<Failure, void>> call(Params params) async {
    return repository.registerUser(params.user);
  }
}

class Params {
  final User user;

  Params({this.user});
}
