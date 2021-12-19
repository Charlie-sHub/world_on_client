import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class GetTags implements AsyncUseCase<KtSet<Tag>, Params> {
  final TagManagementRepositoryInterface _repository;

  GetTags(this._repository);

  @override
  Future<Either<Failure, KtSet<Tag>>> call(Params params) async =>
      _repository.getTags(params.tagIds);
}

class Params {
  final Set<UniqueId> tagIds;

  Params({required this.tagIds});
}
