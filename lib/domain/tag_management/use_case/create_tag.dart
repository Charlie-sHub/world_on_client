import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';

class CreateTag implements AsyncUseCase<Unit, Params> {
  final TagManagementRepositoryInterface _repository;

  const CreateTag(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final tag = Tag(
      id: null,
      name: params.name,
      creator: params.creator,
      creationDate: PastDate(DateTime.now()),
      modificationDate: PastDate(DateTime.now()),
    );
    return _repository.createTag(tag);
  }
}

class Params {
  final Name name;
  final User creator;

  Params({
    @required this.name,
    @required this.creator,
  });
}
