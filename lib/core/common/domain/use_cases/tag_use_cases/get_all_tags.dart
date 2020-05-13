import 'package:dartz/dartz.dart';
import 'package:worldon/core/common/domain/entities/tag.dart';
import 'package:worldon/core/common/domain/repository/tag_repository.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/core/use_case/use_case.dart';

class GetAllTags implements UseCase<List<Tag>, NoParams> {
  final TagRepository tagRepository;

  GetAllTags(this.tagRepository);

  Future<Either<Failure, List<Tag>>> call(NoParams params) async {
    return tagRepository.getAllTags();
  }
}
