import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class WatchBlockedUsers implements StreamUseCase<KtList<User>, Params> {
  final ProfileRepositoryInterface repository;

  WatchBlockedUsers(this.repository);

  @override
  Stream<Either<Failure, KtList<User>>> call(Params params) async* {
    yield* repository.watchBlockedUsers(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
