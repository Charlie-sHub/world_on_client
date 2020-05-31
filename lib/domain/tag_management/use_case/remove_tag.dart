import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository.dart';

class RemoveTag implements AsyncUseCase<Unit, Params> {
  final TagManagementRepository repository;

  RemoveTag(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.removeTag(params.id);
  }
}

class Params {
  final int id;

  Params({this.id});
}
