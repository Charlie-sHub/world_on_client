import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchSearchExperiencesByTags implements StreamUseCase<KtList<Experience>, Params> {
  final SearchRepositoryInterface _repository;

  WatchSearchExperiencesByTags(this._repository);

  @override
  Stream<Either<Failure, KtList<Experience>>> call(Params params) async* {
    yield* _repository.watchExperiencesByTags(params.tags);
  }
}

class Params {
  final TagSet tags;

  Params({required this.tags});
}
