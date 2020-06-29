import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';

@lazySingleton
class CreateTag implements AsyncUseCase<Unit, Params> {
  final TagManagementRepositoryInterface _repository;
  
  CreateTag(this._repository);
  
  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.createTag(params.tag);
  }
}

class Params {
  final Tag tag;

  Params({
    @required this.tag,
  });
}
