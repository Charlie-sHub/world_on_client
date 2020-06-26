import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/tag/tag.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';

/// [UseCase] for direct registration with World On
///
/// Will probably change the type to [Unit] instead of [User]
class Register implements AsyncUseCase<Unit, Params> {
  final AuthenticationRepositoryInterface _repository;

  Register(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final user = User.empty().copyWith(
      name: params.name,
      username: params.username,
      password: params.password,
      email: params.email,
      birthday: params.birthday,
      description: params.description,
      imageURL: params.imageName,
      interests: params.interests,
    );
    return _repository.register(user);
  }
}

class Params {
  final Name name;
  final Name username;
  final Password password;
  final EmailAddress email;
  final PastDate birthday;
  final EntityDescription description;
  final String imageName;
  final Set<Tag> interests;

  Params({
    @required this.name,
    @required this.username,
    @required this.password,
    @required this.email,
    @required this.birthday,
    @required this.description,
    @required this.imageName,
    @required this.interests,
  });
}
