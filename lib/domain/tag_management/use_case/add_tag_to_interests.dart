import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class AddTagToInterests implements AsyncUseCase<Unit, Params> {
  final TagCoreRepositoryInterface _repository;

  AddTagToInterests(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.addTagToInterests(params.tag);
  }
}

class Params {
  final Tag tag;

  Params({required this.tag});
}
