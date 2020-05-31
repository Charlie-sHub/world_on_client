import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/search/repository/search_repository.dart';

class SearchExperiencesByDifficulty implements AsyncUseCase<Set<Experience>, Params> {
  final SearchRepository _repository;

  const SearchExperiencesByDifficulty(this._repository);

  @override
  Future<Either<Failure, Set<Experience>>> call(Params params) async {
    return _repository.searchExperiencesByDifficulty(params.difficulty);
  }
}

class Params {
  final int difficulty;

  Params({@required this.difficulty});
}
