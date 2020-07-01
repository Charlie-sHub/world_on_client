import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/tag_management/repository/tag_repository_interface.dart';

@LazySingleton(
  as: TagCoreRepositoryInterface,
  env: Environment.test,
)
class MockTagRepository extends Mock implements TagCoreRepositoryInterface {}
