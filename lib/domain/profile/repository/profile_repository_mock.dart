import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/profile/repository/profile_repository_interface.dart';

@LazySingleton(
  as: ProfileRepositoryInterface,
  env: Environment.test,
)
class MockProfileRepository extends Mock implements ProfileRepositoryInterface {}
