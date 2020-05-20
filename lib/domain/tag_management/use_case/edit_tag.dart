import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/repository/tag_repository.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class EditTag extends AsyncUseCase<Unit, Params> {
  final TagRepository repository;

  EditTag(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.editTag(params.tag);
  }
}

class Params {
  final Tag tag;

  Params({this.tag});
}
