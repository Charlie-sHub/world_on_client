import 'package:dartz/dartz.dart';
import 'package:worldon/core/common/domain/repository/tag_repository.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/core/use_case/use_case.dart';

class RemoveTag implements UseCase<void, Params> {
  final TagRepository repository;

  RemoveTag(this.repository);

  @override
  Future<Either<Failure, void>> call(Params params) async {
    return repository.removeTag(params.id);
  }
}

class Params {
  final int id;

  Params({this.id});
}
