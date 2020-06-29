import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/repository/public_key_repository_interface.dart';

@LazySingleton(
  as: PublicKeyRepositoryInterface,
  env: Environment.test,
)
class MockPublicKeyRepository extends Mock implements PublicKeyRepositoryInterface {}
