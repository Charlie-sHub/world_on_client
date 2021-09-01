import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class ResetPassword implements AsyncUseCase<Unit, Params> {
  final AuthenticationRepositoryInterface _repository;

  ResetPassword(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.resetPassword(params.email);
  }
}

class Params {
  final EmailAddress email;

  Params({
    required this.email,
  });
}
