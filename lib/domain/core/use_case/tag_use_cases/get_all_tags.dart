import 'package:dartz/dartz.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/repository/tag_repository.dart';

import '../use_case.dart';

class GetAllTags implements AsyncUseCase<List<Tag>, NoParams> {
  final TagRepository tagRepository;

  GetAllTags(this.tagRepository);

  Future<Either<Failure, List<Tag>>> call(NoParams params) async {
    return await tagRepository.getAllTags();
  }
}
