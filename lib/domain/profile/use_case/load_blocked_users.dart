import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@lazySingleton
class LoadBlockedUsers implements StreamUseCase<Set<User>, Params> {
  final ProfileRepositoryInterface repository;
  
  LoadBlockedUsers(this.repository);
  
  @override
  Stream<Either<Failure, Set<User>>> call(Params params) async* {
    yield* repository.loadBlockedUsers(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
