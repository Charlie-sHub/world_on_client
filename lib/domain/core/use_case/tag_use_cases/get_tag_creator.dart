import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/repository/tag_repository_interface.dart';

import '../use_case.dart';

@lazySingleton
class GetTagCreator implements AsyncUseCase<User, Params> {
  final TagCoreRepositoryInterface _repository;
  
  GetTagCreator(this._repository);
  
  @override
  Future<Either<Failure, User>> call(Params params) async {
    return _repository.getCreator(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
