import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/repository/tag_repository_interface.dart';

import '../../core/use_case/use_case.dart';

@LazySingleton(env: Environment.prod)
class GetAllTags implements StreamUseCase<List<Tag>, NoParams> {
  final TagCoreRepositoryInterface _repository;
  
  GetAllTags(this._repository);
  
  @override
  Stream<Either<Failure, List<Tag>>> call(NoParams params) async* {
    yield* _repository.getAllTags();
  }
}
