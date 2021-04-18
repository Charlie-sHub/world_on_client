import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';

import '../../core/use_case/use_case.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchTagsByCreator implements StreamUseCase<KtList<Tag>, Params> {
  final TagCoreRepositoryInterface _repository;

  WatchTagsByCreator(this._repository);

  @override
  Stream<Either<Failure, KtList<Tag>>> call(Params params) async* {
    yield* _repository.watchTagsByCreator(params.creatorId);
  }
}

class Params {
  final UniqueId creatorId;

  Params({required this.creatorId});
}
