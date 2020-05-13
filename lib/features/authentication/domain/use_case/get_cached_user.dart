import 'package:dartz/dartz.dart';
import 'package:worldon/core/common/domain/entities/user.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/core/use_case/use_case.dart';
import 'package:worldon/features/authentication/domain/repository/cached_user_repository.dart';

class GetCachedUser implements UseCase<User, NoParams> {
  final CachedUserRepository repository;

  GetCachedUser(this.repository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return repository.getCachedUser();
  }
}
