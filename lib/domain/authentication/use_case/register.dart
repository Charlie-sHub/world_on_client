import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

/// [UseCase] for direct registration with World On
///
/// Will probably change the type to [Unit] instead of [User]
class Register implements AsyncUseCase<Unit, Params> {
  final AuthenticationRepositoryInterface _repository;

  Register(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.register(params.user);
  }
}

class Params {
  final User user;

  Params({
    @required this.user,
  });
}
