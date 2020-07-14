import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: Environment.dev)
class LogOut implements AsyncUseCase<Unit, NoParams> {
  final AuthenticationRepositoryInterface _repository;
  
  LogOut(this._repository);
  
  @override
  Future<Either<Failure, Unit>> call(NoParams params) async {
    return _repository.logOut();
  }
}
