import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository.dart';

class EditTag extends AsyncUseCase<Unit, Params> {
  final TagManagementRepository repository;

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
