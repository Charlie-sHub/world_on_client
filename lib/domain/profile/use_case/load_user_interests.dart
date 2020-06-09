import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

class LoadUserInterests implements AsyncUseCase<Set<Tag>, Params> {
  final ProfileRepositoryInterface _repository;

  LoadUserInterests(this._repository);

  @override
  Future<Either<Failure, Set<Tag>>> call(Params params) async {
    return _repository.loadUserInterests(params.userId);
  }
}

class Params {
  final int userId;

  Params({@required this.userId});
}
