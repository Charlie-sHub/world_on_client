import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/repository/tag_repository.dart';

import '../use_case.dart';

class GetTagCreator implements AsyncUseCase<User, Params> {
  final TagRepository repository;

  GetTagCreator(this.repository);

  @override
  Future<Either<Failure, User>> call(Params params) async {
    return repository.getCreator(params.id);
  }
}

class Params {
  final int id;

  Params({this.id});
}
