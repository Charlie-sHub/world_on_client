import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/core/common/domain/entities/options.dart';
import 'package:worldon/core/common/domain/entities/user.dart';
import 'package:worldon/features/authentication/domain/use_case/log_out.dart';

void main() {
  LogOut useCase;
  setUp(
    () {
      useCase = LogOut();
    },
  );
  final user = User(
    id: 1,
    name: "Test User",
    username: "testuser",
    password: "1234",
    email: "test@test.test",
    birthday: DateTime.now(),
    biography: "I test",
    imageName: "test.png",
    level: 1,
    experiencePoints: 0,
    privacy: false,
    adminPowers: false,
    enabled: true,
    lastLogin: DateTime.now(),
    creationDate: DateTime.now(),
    modificationDate: DateTime.now(),
    options: Options(),
  );
  // TODO Test LogOut
  test(
    "Should ",
    () async {
      // Arrange

      // Act

      // Assert
    },
  );
  // TODO Test on Failure
}
