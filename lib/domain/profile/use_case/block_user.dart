import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/profile/repository/profile_repository.dart';

class BlockUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepository _repository;

  const BlockUser(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return _repository.blockUser(
      blockerId: params.blockerId,
      blockedId: params.blockedId,
    );
  }
}

class Params {
  final int blockedId;
  final int blockerId;

  Params({@required this.blockedId, @required this.blockerId});
}
