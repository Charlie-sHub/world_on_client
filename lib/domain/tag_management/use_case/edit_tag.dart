import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/failures/core_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository.dart';

class EditTag implements AsyncUseCase<Unit, Params> {
  final TagManagementRepository _repository;

  const EditTag(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final isAuthorized = params.user == params.tag.creator || params.user.adminPowers;
    if (isAuthorized) {
      return _repository.editTag(params.tag);
    } else {
      return left(const CoreFailure.unAuthorizedError());
    }
  }
}

class Params {
  final User user;
  final Tag tag;
  
  Params({@required this.user, @required this.tag});
}
