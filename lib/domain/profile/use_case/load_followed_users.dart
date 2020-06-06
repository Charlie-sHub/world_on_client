import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

class LoadFollowedUsers implements AsyncUseCase<Set<User>, Params> {
  final ProfileRepositoryInterface repository;

  const LoadFollowedUsers(this.repository);

  @override
  Future<Either<Failure, Set<User>>> call(Params params) async {
    return repository.loadFollowedUsers(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
