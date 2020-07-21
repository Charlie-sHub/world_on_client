import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/experience_management/repository/experience_management_repository_interface.dart';

@LazySingleton(
  as: ExperienceManagementRepositoryInterface,
  env: [Environment.test],
)
class MockExperienceManagementRepository extends Mock implements ExperienceManagementRepositoryInterface {}
