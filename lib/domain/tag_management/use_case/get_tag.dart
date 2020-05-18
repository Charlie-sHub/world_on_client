import 'package:dartz/dartz.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/repository/tag_repository.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class GetTag implements AsyncUseCase<Tag, Params> {
  final TagRepository repository;

  GetTag(this.repository);

  @override
  Future<Either<Failure, Tag>> call(Params params) async {
    return await repository.getTag(params.id);
  }
}

class Params {
  final int id;

  Params({this.id});
}
