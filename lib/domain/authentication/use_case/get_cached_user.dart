import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/authentication/repository/cached_user_repository.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class GetCachedUser implements AsyncUseCase<User, NoParams> {
  final CachedUserRepository repository;

  const GetCachedUser(this.repository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return repository.getCachedUser();
  }
}
