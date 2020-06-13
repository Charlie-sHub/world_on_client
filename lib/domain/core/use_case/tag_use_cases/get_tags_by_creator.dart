import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/repository/tag_repository_interface.dart';

import '../use_case.dart';

class GetTagsByCreator implements AsyncUseCase<List<Tag>, Params> {
  final TagCoreRepositoryInterface _repository;

  GetTagsByCreator(this._repository);

  @override
  Future<Either<Failure, List<Tag>>> call(Params params) async {
    return _repository.getTagsByCreator(params.creatorId);
  }
}

class Params {
  final int creatorId;

  Params({@required this.creatorId});
}
