import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/entity_description.dart';
import 'package:worldon/domain/core/validation/objects/experience_points.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';
import 'package:worldon/domain/core/validation/objects/password.dart';
import 'package:worldon/domain/core/validation/objects/past_date.dart';
import 'package:worldon/domain/core/validation/objects/user_level.dart';

/// For all the tests that require a valid [User] entity
User getValidUser() {
  return User.empty().copyWith(
    id: 1,
    name: Name("Test"),
    username: Name("Test"),
    password: Password("abcd*1234"),
    email: EmailAddress("test@test.test"),
    description: EntityDescription("Test"),
    level: UserLevel(1),
    experiencePoints: ExperiencePoints(10),
    lastLogin: PastDate(DateTime.now().subtract(const Duration(days: 10))),
    creationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
    modificationDate: PastDate(DateTime.now().subtract(const Duration(days: 10))),
  );
}
