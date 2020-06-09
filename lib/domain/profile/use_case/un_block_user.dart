import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

class UnBlockUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface _repository;

  UnBlockUser(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.unBlockUser(
      blockedId: params.blockedId,
      blockerId: params.blockerId,
    );
  }
}

class Params {
  final int blockedId;
  final int blockerId;

  Params({@required this.blockedId, @required this.blockerId});
}
