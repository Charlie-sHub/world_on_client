import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';

class CreateTag implements AsyncUseCase<Unit, Params> {
  final TagManagementRepositoryInterface _repository;

  const CreateTag(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.createTag(params.tag);
  }
}

class Params {
  final Tag tag;

  Params({@required this.tag});
}
