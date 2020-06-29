import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/achievement_management/repository/achievement_repository_interface.dart';

@LazySingleton(
  as: AchievementRepositoryInterface,
  env: Environment.test,
)
class MockAchievementRepository extends Mock implements AchievementRepositoryInterface {}
