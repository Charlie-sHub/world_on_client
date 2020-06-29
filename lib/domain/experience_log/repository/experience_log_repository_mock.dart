import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/experience_log/repository/experience_log_repository_interface.dart';

@LazySingleton(
  as: ExperienceLogRepositoryInterface,
  env: Environment.test,
)
class MockExperienceLogRepository extends Mock implements ExperienceLogRepositoryInterface {}
