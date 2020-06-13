import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

class LoadUser implements AsyncUseCase<User, Params> {
  final ProfileRepositoryInterface _repository;

  LoadUser(this._repository);

  @override
  Future<Either<Failure, User>> call(Params params) async {
    return _repository.loadUser(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
