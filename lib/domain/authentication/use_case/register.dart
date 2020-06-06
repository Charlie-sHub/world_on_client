import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/core/entities/tag.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

/// [UseCase] for direct registration with World On
///
/// Will probably change the type to [Unit] instead of [User]
class Register implements AsyncUseCase<User, Params> {
  final AuthenticationRepositoryInterface _repository;

  const Register(this._repository);

  @override
  Future<Either<Failure, User>> call(Params params) async {
    final user = User(
      id: null,
      name: params.name,
      username: params.username,
      password: params.password,
      email: params.email,
      birthday: params.birthday,
      description: params.description,
      imageName: params.imageName,
      level: UserLevel(0),
      experiencePoints: ExperiencePoints(0),
      privacy: false,
      adminPowers: false,
      enabled: true,
      lastLogin: PastDate(DateTime.now()),
      creationDate: PastDate(DateTime.now()),
      modificationDate: PastDate(DateTime.now()),
      // What to do with the Options? Should some options be requested from the User at registration?
      options: null,
      interests: params.interests,
      // TODO: Figure out what to do with these, maybe just create empty Sets before sending the User to the repository
      blockedUsers: null,
      followedUsers: null,
      devices: null,
      systems: null,
      achievements: null,
      experiencesDone: null,
      experiencesLiked: null,
      experiencesToDo: null,
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
