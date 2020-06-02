import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/repository/tag_repository.dart';

import '../use_case.dart';

class GetAllTags implements AsyncUseCase<List<Tag>, NoParams> {
  final TagCoreRepository _repository;

  const GetAllTags(this._repository);

  @override
  Future<Either<Failure, List<Tag>>> call(NoParams params) async {
    return _repository.getAllTags();
  }
}
