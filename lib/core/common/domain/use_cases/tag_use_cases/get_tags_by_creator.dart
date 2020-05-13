import 'package:dartz/dartz.dart';
import 'package:worldon/core/common/domain/entities/tag.dart';
import 'package:worldon/core/common/domain/repository/tag_repository.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/core/use_case/use_case.dart';

class GetTagsByCreator implements UseCase<List<Tag>, Params> {
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
