import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

class SearchTagsByName implements AsyncUseCase<Set<Tag>, Params> {
  final SearchRepositoryInterface _repository;

  SearchTagsByName(this._repository);

  @override
  Future<Either<Failure, Set<Tag>>> call(Params params) async {
    return _repository.searchTagsByName(params.name);
  }
}

class Params {
  final Name name;

  Params({@required this.name});
}
