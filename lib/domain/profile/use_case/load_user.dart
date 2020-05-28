import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository.dart';

class LoadUser implements AsyncUseCase<User, Params> {
  // TODO: make all repositories private
  final ProfileRepository repository;

  const LoadUser(this.repository);

  @override
  Future<Either<Failure, User>> call(Params params) async {
    return repository.loadUser(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
