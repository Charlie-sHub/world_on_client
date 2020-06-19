import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/difficulty.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

class SearchExperiencesByDifficulty implements AsyncUseCase<Set<Experience>, Params> {
  final SearchRepositoryInterface _repository;

  SearchExperiencesByDifficulty(this._repository);

  @override
  Future<Either<Failure, Set<Experience>>> call(Params params) async {
    return _repository.searchExperiencesByDifficulty(params.difficulty);
  }
}

class Params {
  final Difficulty difficulty;

  Params({@required this.difficulty});
}
