import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/search/repository/search_repository.dart';

class SearchExperiencesByName implements AsyncUseCase<Set<Experience>, Params> {
  final SearchRepository _repository;

  const SearchExperiencesByName(this._repository);

  @override
  Future<Either<Failure, Set<Experience>>> call(Params params) async {
    return _repository.searchExperiencesByName(params.name);
  }
}

class Params {
  final String name;

  Params({@required this.name});
}
