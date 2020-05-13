import 'package:dartz/dartz.dart';
import 'package:worldon/core/common/domain/entities/user.dart';
import 'package:worldon/core/common/domain/repository/tag_repository.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/core/use_case/use_case.dart';

class GetTagCreator implements UseCase<User, Params> {
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
