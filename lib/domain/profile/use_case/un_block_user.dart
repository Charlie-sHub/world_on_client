import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@lazySingleton
class UnBlockUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface _repository;
  
  UnBlockUser(this._repository);
  
  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.unBlockUser(params.blockedId);
  }
}

class Params {
  final int blockedId;

  Params({@required this.blockedId});
}
