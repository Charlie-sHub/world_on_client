import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@lazySingleton
class LoadExperiencesDone implements StreamUseCase<Set<Experience>, Params> {
  final ProfileRepositoryInterface repository;
  
  LoadExperiencesDone(this.repository);
  
  @override
  Stream<Either<Failure, Set<Experience>>> call(Params params) async* {
    yield* repository.loadExperiencesDone(params.id);
  }
}

class Params {
  final int id;

  Params({@required this.id});
}
