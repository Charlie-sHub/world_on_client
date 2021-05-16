import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchProfile implements StreamUseCase<User, Params> {
  final ProfileRepositoryInterface _repository;

  WatchProfile(this._repository);

  @override
  Stream<Either<Failure, User>> call(Params params) async* {
    yield* _repository.watchProfile(params.userId);
  }
}

class Params {
  final UniqueId userId;

  Params({required this.userId});
}
