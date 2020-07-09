import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/tag_set.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(env: Environment.prod)
class SearchExperiencesByTags implements StreamUseCase<Set<Experience>, Params> {
  final SearchRepositoryInterface _repository;

  SearchExperiencesByTags(this._repository);

  @override
  Stream<Either<Failure, Set<Experience>>> call(Params params) async* {
    yield* _repository.searchExperiencesByTags(params.tags);
  }
}

class Params {
  // TODO: Change every Set and List to KtSet and KTList
  final TagSet tags;

  Params({@required this.tags});
}
