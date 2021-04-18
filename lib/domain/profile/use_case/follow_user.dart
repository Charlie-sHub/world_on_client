import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/domain/profile/failures/profile_domain_failure.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

import '../../../injection.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class FollowUser implements AsyncUseCase<Unit, Params> {
  final ProfileRepositoryInterface _repository;

  FollowUser(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final _userRequestingOption = await getIt<GetLoggedInUser>().call(getIt<NoParams>());
    final _userRequesting = _userRequestingOption.fold(
      // Find a better way to deal with not getting a User
      () => throw UnAuthenticatedError(),
      id,
    );
    if (_userRequesting.id != params.userToFollowId && _userRequesting != User.empty()) {
      return _repository.followUser(params.userToFollowId);
    } else {
      return left(const Failure.profileDomain(ProfileDomainFailure.followItself()));
    }
  }
}

class Params {
  final UniqueId userToFollowId;

  Params({required this.userToFollowId});
}
