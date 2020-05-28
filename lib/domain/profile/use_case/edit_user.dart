import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository.dart';

class EditUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepository repository;

  const EditUser(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.editUser(params.user);
  }
}

class Params {
  final User user;

  Params({@required this.user});
}
