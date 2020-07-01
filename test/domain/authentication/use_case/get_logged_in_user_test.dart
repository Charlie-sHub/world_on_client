import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/core/entities/user/user.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

void main() {
  AuthenticationRepositoryInterface mockAuthenticationRepository;
  GetLoggedInUser useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockAuthenticationRepository = getIt<AuthenticationRepositoryInterface>();
      useCase = GetLoggedInUser(mockAuthenticationRepository);
    },
  );
  final loggedInUser = User.empty();
  test(
    "Should get loggedInUser",
    () async {
      // Arrange
      final someUser = some<User>(loggedInUser);
      when(mockAuthenticationRepository.getLoggedInUser()).thenAnswer((_) async => someUser);
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, someUser);
      _verifyInteractions(mockAuthenticationRepository);
    },
  );
  test(
    "Should get loggedInUser",
    () async {
      // Arrange
      final noUser = none<User>();
      when(mockAuthenticationRepository.getLoggedInUser()).thenAnswer((_) async => noUser);
      // Act
      final result = await useCase(NoParams());
      // Assert
      expect(result, noUser);
      _verifyInteractions(mockAuthenticationRepository);
    },
  );
}

void _verifyInteractions(AuthenticationRepositoryInterface mockAuthenticationRepository) {
  verify(mockAuthenticationRepository.getLoggedInUser());
  verifyNoMoreInteractions(mockAuthenticationRepository);
}
