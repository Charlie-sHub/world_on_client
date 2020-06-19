import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';

/// [UseCase] for direct World On Login
class LogIn implements AsyncUseCase<Unit, Params> {
  final AuthenticationRepositoryInterface _repository;

  LogIn(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final user = User(
      username: params.username,
      password: params.password,
      creationDate: null,
      name: null,
      id: null,
      systems: null,
      interests: null,
      followedUsers: null,
      experiencesToDo: null,
      experiencesLiked: null,
      experiencesDone: null,
      devices: null,
      blockedUsers: null,
      achievements: null,
      adminPowers: null,
      modificationDate: null,
      birthday: null,
      description: null,
      email: null,
      enabled: null,
      experiencePoints: null,
      imageURL: null,
      lastLogin: null,
      level: null,
      options: null,
      privacy: null,
    );
    return _repository.logIn(user);
  }
}

class Params {
  final Name username;
  final Password password;

  Params({
    @required this.username,
    @required this.password,
  });
}
