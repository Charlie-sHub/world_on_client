import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@LazySingleton(env: Environment.dev)
class DeleteCache implements AsyncUseCase<Unit, NoParams> {
  final CoreRepositoryInterface _repository;
  
  DeleteCache(this._repository);
  
  @override
  Future<Either<Failure, Unit>> call(NoParams params) {
    return _repository.deleteCache();
  }
}
