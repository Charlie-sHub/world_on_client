import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart' as get_logged_in_user;
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/failures/error.dart';
import 'package:worldon/domain/core/use_case/is_logged_in_user.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';

void main() {
  get_logged_in_user.GetLoggedInUser getLoggedInUser;
  IsLoggedInUser useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      getLoggedInUser = getIt<get_logged_in_user.GetLoggedInUser>();
      useCase = IsLoggedInUser();
    },
  );
  final randomUser = User.empty().copyWith(id: UniqueId());
  final user = User.empty().copyWith(id: UniqueId());
  test(
    "Should return true",
    () async {
      // Arrange
      when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
      // Act
      final result = await useCase(Params(userToCompareWith: user));
      // Assert
      expect(result, true);
    },
  );
  test(
    "Should return false",
    () async {
      // Arrange
      when(getLoggedInUser.call(any)).thenAnswer((_) async => some(user));
      // Act
      final result = await useCase(Params(userToCompareWith: randomUser));
      // Assert
      expect(result, false);
    },
  );
  test(
    TestDescription.throwUnAuthenticated,
    () async {
      // Arrange
      when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
      // Act
      try {
        await useCase(Params(userToCompareWith: user));
        fail(TestDescription.notThrown);
      } catch (error) {
        // Assert
        expect(error, isInstanceOf<UnAuthenticatedError>());
      }
    },
  );
}
