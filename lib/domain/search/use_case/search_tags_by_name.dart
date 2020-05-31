import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/search/repository/search_repository.dart';

class SearchTagsByName implements AsyncUseCase<Set<Tag>, Params> {
  final SearchRepository _repository;

  const SearchTagsByName(this._repository);

  @override
  Future<Either<Failure, Set<Tag>>> call(Params params) async {
    return _repository.searchTagsByName(params.name);
  }
}

class Params {
  final String name;

  Params({@required this.name});
}
