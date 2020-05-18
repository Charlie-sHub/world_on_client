import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/repository/tag_repository.dart';

import '../use_case.dart';

class GetTagsByName implements AsyncUseCase<List<Tag>, Params> {
  final TagRepository repository;

  GetTagsByName(this.repository);

  @override
  Future<Either<Failure, List<Tag>>> call(Params params) async {
    return await repository.getTagsByName(params.name);
  }
}

class Params {
  final String name;

  Params({@required this.name});
}
