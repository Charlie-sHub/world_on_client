import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/repository/tag_repository_interface.dart';

import '../use_case.dart';

class GetTagCreator implements AsyncUseCase<User, Params> {
  final TagCoreRepositoryInterface _repository;

  const GetTagCreator(this._repository);

  @override
  Future<Either<Failure, User>> call(Params params) async {
    return _repository.getCreator(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
