import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class GetTag implements AsyncUseCase<Tag, Params> {
  final TagManagementRepositoryInterface _repository;

  GetTag(this._repository);

  @override
  Future<Either<Failure, Tag>> call(Params params) async {
    return _repository.getTag(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
