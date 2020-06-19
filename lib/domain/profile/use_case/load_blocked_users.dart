import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

class LoadBlockedUsers implements AsyncUseCase<Set<User>, Params> {
  final ProfileRepositoryInterface repository;

  LoadBlockedUsers(this.repository);

  @override
  Future<Either<Failure, Set<User>>> call(Params params) async {
    return repository.loadBlockedUsers(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
