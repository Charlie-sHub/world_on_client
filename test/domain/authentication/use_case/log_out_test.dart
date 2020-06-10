import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/domain/authentication/use_case/log_out.dart';
import 'package:worldon/domain/core/entities/user.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

void main() {
  // TODO: Determine the necessity of this UseCase
  LogOut useCase;
  setUp(
    () {
      useCase = LogOut();
    },
  );
  final user = User(
    id: 2,
    name: Name("Test User"),
    username: Name("TestUser"),
    password: Password("abcd*1234"),
    email: EmailAddress("test@test.test"),
    birthday: PastDate(DateTime.now()),
    description: EntityDescription("For testing"),
    imageURL: "test.png",
    level: UserLevel(1),
    experiencePoints: ExperiencePoints(1),
    privacy: false,
    adminPowers: false,
    enabled: true,
    lastLogin: PastDate(DateTime.now()),
    creationDate: PastDate(DateTime.now()),
    modificationDate: PastDate(DateTime.now()),
    options: null,
    achievements: null,
    blockedUsers: null,
    devices: null,
    experiencesDone: null,
    experiencesLiked: null,
    experiencesToDo: null,
    followedUsers: null,
    interests: null,
    systems: null,
  );
  test(
    "Should ",
    () async {
      // Arrange

      // Act

      // Assert
    },
  );
}
