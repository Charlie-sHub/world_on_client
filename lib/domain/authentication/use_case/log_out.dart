import 'package:injectable/injectable.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class LogOut {
  final AuthenticationRepositoryInterface _repository;

  LogOut(this._repository);

  Future<void> call(NoParams params) => _repository.logOut();
}
