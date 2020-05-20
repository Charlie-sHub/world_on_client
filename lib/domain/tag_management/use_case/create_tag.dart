import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/repository/tag_repository.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class CreateTag extends AsyncUseCase<Unit, Params> {
  final TagRepository repository;

  CreateTag(this.repository);

  @override
  Future<Either<Failure, Unit>> call(params) async {
    return repository.createTag(params.tag);
  }
}

class Params {
  final Tag tag;

  Params({this.tag});
}
