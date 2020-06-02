import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/authentication/repository/cached_user_repository.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class GetCachedUser implements AsyncUseCase<User, NoParams> {
  final CachedUserRepository _repository;

  const GetCachedUser(this._repository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return _repository.getCachedUser();
  }
}
