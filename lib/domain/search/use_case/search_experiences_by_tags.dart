import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

class SearchExperiencesByTags implements AsyncUseCase<Set<Experience>, Params> {
  final SearchRepositoryInterface _repository;

  SearchExperiencesByTags(this._repository);

  @override
  Future<Either<Failure, Set<Experience>>> call(Params params) async {
    return _repository.searchExperiencesByTags(params.tags);
  }
}

class Params {
  final Set<Tag> tags;

  Params({@required this.tags});
}
