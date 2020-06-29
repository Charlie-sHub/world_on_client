import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';

@LazySingleton(
  as: CoreRepositoryInterface,
  env: Environment.test,
)
class MockCoreRepository extends Mock implements CoreRepositoryInterface {}
