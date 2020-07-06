import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart' as get_logged_in_user;
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/is_logged_in_user.dart';
import 'package:worldon/injection.dart';

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
  final randomUser = User.empty().copyWith(id: 1);
  final user = User.empty().copyWith(id: 2);
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
    "Should return false",
    () async {
      // Arrange
      when(getLoggedInUser.call(any)).thenAnswer((_) async => none());
      // Act
      final result = await useCase(Params(userToCompareWith: user));
      // Assert
      expect(result, false);
    },
  );
}
