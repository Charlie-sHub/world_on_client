import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/experience_navigation/repository/experience_navigation_repository_interface.dart';

@LazySingleton(
  as: ExperienceNavigationRepositoryInterface,
  env: Environment.test,
)
class MockExperienceNavigationRepository extends Mock implements ExperienceNavigationRepositoryInterface {}
