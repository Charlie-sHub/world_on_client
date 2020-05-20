import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/repository/tag_repository.dart';

import '../use_case.dart';

class GetTagsByCreator implements AsyncUseCase<List<Tag>, Params> {
  final TagRepository repository;

  GetTagsByCreator(this.repository);

  @override
  Future<Either<Failure, List<Tag>>> call(Params params) async {
    return repository.getTagsByCreator(params.creatorId);
  }
}

class Params {
  final int creatorId;

  Params({this.creatorId});
}
