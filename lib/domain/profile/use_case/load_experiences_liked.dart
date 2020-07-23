import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class LoadExperiencesLiked implements StreamUseCase<KtList<Experience>, Params> {
  final ProfileRepositoryInterface repository;

  LoadExperiencesLiked(this.repository);

  @override
  Stream<Either<Failure, KtList<Experience>>> call(Params params) async* {
    yield* repository.loadExperiencesLiked(params.userId);
  }
}

class Params {
  final int userId;

  Params({@required this.userId});
}
