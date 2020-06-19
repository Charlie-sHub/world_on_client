import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

class LoadExperiencesLiked implements AsyncUseCase<Set<Experience>, Params> {
  final ProfileRepositoryInterface repository;

  LoadExperiencesLiked(this.repository);

  @override
  Future<Either<Failure, Set<Experience>>> call(Params params) async {
    return repository.loadExperiencesLiked(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
