import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class GetAmountOfFollowers implements AsyncUseCase<int, Params> {
  final ProfileRepositoryInterface _repository;

  GetAmountOfFollowers(this._repository);

  @override
  Future<Either<Failure, int>> call(Params params) async {
    return _repository.getAmountOfFollowers(params.id);
  }
}

class Params {
  final UniqueId id;

  Params({@required this.id});
}
