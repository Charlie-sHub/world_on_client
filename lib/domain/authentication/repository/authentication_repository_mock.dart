import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/repository/authentication_repository_interface.dart';

@LazySingleton(
  as: AuthenticationRepositoryInterface,
  env: [Environment.test],
)
class MockAuthenticationRepository extends Mock implements AuthenticationRepositoryInterface {}
