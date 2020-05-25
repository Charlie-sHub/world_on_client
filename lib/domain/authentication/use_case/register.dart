import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

/// [UseCase] for direct registration with World On
///
/// Will probably change the type to [Unit] instead of [User]
class Register implements AsyncUseCase<User, Params> {
  final AuthenticationRepository repository;

  Register(this.repository);

  @override
  Future<Either<Failure, User>> call(Params params) async {
    return repository.register(params.user);
  }
}

class Params {
  final User user;

  Params({@required this.user});
}
