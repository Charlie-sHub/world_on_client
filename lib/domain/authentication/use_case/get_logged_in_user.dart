import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: Environment.prod)
class GetLoggedInUser implements AsyncUseCase<Option<User>, NoParams> {
  final AuthenticationRepositoryInterface _repository;
  
  GetLoggedInUser(this._repository);
  
  @override
  Future<Either<Failure, Option<User>>> call(NoParams params) async {
    return _repository.getLoggedInUser();
  }
}
