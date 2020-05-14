import 'package:dartz/dartz.dart';
import 'package:worldon/core/common/domain/entities/tag.dart';
import 'package:worldon/core/common/domain/repository/tag_repository.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/core/use_case/use_case.dart';

class CreateTag extends AsyncUseCase<void, Params> {
  final TagRepository repository;

  CreateTag(this.repository);

  @override
  Future<Either<Failure, void>> call(params) async {
    return await repository.createTag(params.tag);
  }
}

class Params {
  final Tag tag;

  Params({this.tag});
}
