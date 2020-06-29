import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/achievement_management/use_case/get_user_achievements.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  AchievementRepositoryInterface mockAchievementRepository;
  GetUserAchievements useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockAchievementRepository = getIt<AchievementRepositoryInterface>();
      useCase = getIt<GetUserAchievements>();
    },
  );
  final Set<Achievement> achievementSet = {Achievement.empty()};
  test(
    "Should return a Set of achievements",
    () async {
      // Arrange
      when(mockAchievementRepository.getUserAchievements()).thenAnswer((_) => createStream(right(achievementSet)));
      // Act
      final result = await _act(useCase);
      // Assert
      expect(result, right(achievementSet));
      _verifyInteractions(mockAchievementRepository);
    },
  );
  group(
    TestDescription.groupOnFailure,
    () {
      test(
        TestDescription.serverError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.serverError(errorString: TestDescription.errorString));
          when(mockAchievementRepository.getUserAchievements()).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAchievementRepository);
        },
      );
      test(
        TestDescription.notFoundError,
        () async {
          // Arrange
          const failure = Failure.coreData(CoreDataFailure.notFoundError());
          when(mockAchievementRepository.getUserAchievements()).thenAnswer((_) => createStream(left(failure)));
          // Act
          final result = await _act(useCase);
          // Assert
          expect(result, left(failure));
          _verifyInteractions(mockAchievementRepository);
        },
      );
    },
  );
}

Future<Either<Failure, Set<Achievement>>> _act(GetUserAchievements useCase) async {
  final resultStream = useCase(NoParams());
  Either<Failure, Set<Achievement>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(AchievementRepositoryInterface mockAchievementRepository) {
  verify(mockAchievementRepository.getUserAchievements());
  verifyNoMoreInteractions(mockAchievementRepository);
}
