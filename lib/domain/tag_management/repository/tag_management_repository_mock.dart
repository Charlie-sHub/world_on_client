import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/tag_management/repository/tag_management_repository_interface.dart';

@LazySingleton(
  as: TagManagementRepositoryInterface,
  env: [Environment.test],
)
class MockTagManagementRepository extends Mock implements TagManagementRepositoryInterface {}
