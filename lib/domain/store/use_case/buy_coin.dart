import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/store/repository/store_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class BuyCoin implements AsyncUseCase<Unit, NoParams> {
  final StoreRepositoryInterface _repository;

  BuyCoin(this._repository);

  @override
  Future<Either<Failure, Unit>> call(NoParams params) async {
    return _repository.buyCoin();
  }
}
