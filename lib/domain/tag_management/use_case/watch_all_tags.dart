import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';

import '../../core/use_case/use_case.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchAllTags implements StreamUseCase<KtList<Tag>, NoParams> {
  final TagCoreRepositoryInterface _repository;

  WatchAllTags(this._repository);

  @override
  Stream<Either<Failure, KtList<Tag>>> call(NoParams params) async* {
    yield* _repository.watchAllTags();
  }
}
