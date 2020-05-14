import 'package:dartz/dartz.dart';
import 'package:worldon/core/common/domain/entities/tag.dart';
import 'package:worldon/core/common/domain/repository/tag_repository.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/core/use_case/use_case.dart';

class EditTag extends AsyncUseCase<void, Params> {
  final TagRepository repository;

  EditTag(this.repository);

  @override
  Future<Either<Failure, void>> call(Params params) async {
    return await repository.editTag(params.tag);
  }
}

class Params {
  final Tag tag;

  Params({this.tag});
}
