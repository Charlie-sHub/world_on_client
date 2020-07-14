import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(env: Environment.prod)
class SearchExperiencesByDifficulty implements StreamUseCase<KtSet<Experience>, Params> {
  final SearchRepositoryInterface _repository;
  
  SearchExperiencesByDifficulty(this._repository);
  
  @override
  Stream<Either<Failure, KtSet<Experience>>> call(Params params) async* {
    yield* _repository.searchExperiencesByDifficulty(params.difficulty);
  }
}

class Params {
  final Difficulty difficulty;

  Params({@required this.difficulty});
}
