import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as injectable;
import 'package:kt_dart/kt.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';
import 'package:worldon/domain/achievement_management/use_case/watch_user_achievements.dart';
import 'package:worldon/domain/core/entities/achievement/achievement.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/injection.dart';

import '../../../test_descriptions.dart';
import '../../core/methods/create_stream.dart';

void main() {
  AchievementRepositoryInterface mockAchievementRepository;
  WatchUserAchievements useCase;
  setUpAll(
    () {
      configureDependencies(injectable.Environment.test);
      mockAchievementRepository = getIt<AchievementRepositoryInterface>();
      useCase = WatchUserAchievements(mockAchievementRepository);
    },
  );
  final achievementSet = KtSet.of(Achievement.empty());
  test(
    "Should return a Set of achievements",
    () async {
      // Arrange
      when(mockAchievementRepository.watchUserAchievements()).thenAnswer((_) => createStream(right(achievementSet)));
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
          when(mockAchievementRepository.watchUserAchievements()).thenAnswer((_) => createStream(left(failure)));
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
          when(mockAchievementRepository.watchUserAchievements()).thenAnswer((_) => createStream(left(failure)));
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

Future<Either<Failure, KtSet<Achievement>>> _act(WatchUserAchievements useCase) async {
  final resultStream = useCase(getIt<NoParams>());
  Either<Failure, KtSet<Achievement>> result;
  await for (final either in resultStream) {
    result = either;
  }
  return result;
}

void _verifyInteractions(AchievementRepositoryInterface mockAchievementRepository) {
  verify(mockAchievementRepository.watchUserAchievements());
  verifyNoMoreInteractions(mockAchievementRepository);
}
