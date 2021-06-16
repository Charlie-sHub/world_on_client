import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class IsLoggedInUser {
  // Should this implement AsyncUseCase? it did, but the Failure was lost on GetLoggedInUser anyway
  // so i changed it to this
  Future<bool> call(Params params) async {
    final _getLoggedInUser = getIt<GetLoggedInUser>();
    final _loggedInUserOption = await _getLoggedInUser(getIt<NoParams>());
    final _loggedInUser = _loggedInUserOption.fold(
      () => throw UnAuthenticatedError(),
      id,
    );
    return _loggedInUser.id == params.userToCompareWithId;
  }
}

class Params {
  final UniqueId userToCompareWithId;

  Params({
    required this.userToCompareWithId,
  });
}
