import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/share/repository/share_repository_interface.dart';

@LazySingleton(
  as: ShareRepositoryInterface,
  env: [Environment.test],
)
class MockShareRepository extends Mock implements ShareRepositoryInterface {}
