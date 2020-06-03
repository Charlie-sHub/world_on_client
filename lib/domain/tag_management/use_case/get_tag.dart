import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository.dart';

class GetTag implements AsyncUseCase<Tag, Params> {
  final TagManagementRepository _repository;

  const GetTag(this._repository);

  @override
  Future<Either<Failure, Tag>> call(Params params) async {
    return _repository.getTag(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
