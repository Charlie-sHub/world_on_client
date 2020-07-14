import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(env: Environment.prod)
class LoadFollowingUsers implements StreamUseCase<KtSet<User>, Params> {
  final ProfileRepositoryInterface repository;
  
  LoadFollowingUsers(this.repository);
  
  @override
  Stream<Either<Failure, KtSet<User>>> call(Params params) async* {
    yield* repository.loadFollowingUsers(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
