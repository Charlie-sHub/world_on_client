import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/search/repository/search_repository_interface.dart';

@LazySingleton(
  as: SearchRepositoryInterface,
  env: [Environment.test],
)
class MockSearchRepository extends Mock implements SearchRepositoryInterface {}
