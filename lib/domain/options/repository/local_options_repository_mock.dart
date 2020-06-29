import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/options/repository/local_options_repository_interface.dart';

@LazySingleton(
  as: LocalOptionsRepositoryInterface,
  env: Environment.test,
)
class MockLocalOptionsRepository extends Mock implements LocalOptionsRepositoryInterface {}
