import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/repository/cached_credentials_repository_interface.dart';

@LazySingleton(
  as: CachedCredentialsRepositoryInterface,
  env: Environment.test,
)
class MockCachedUserRepository extends Mock implements CachedCredentialsRepositoryInterface {}
