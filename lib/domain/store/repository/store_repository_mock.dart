import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/store/repository/store_repository_interface.dart';

@LazySingleton(
  as: StoreRepositoryInterface,
  env: [Environment.test],
)
class MockStoreRepository extends Mock implements StoreRepositoryInterface {}
