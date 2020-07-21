import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/options/repository/remote_options_repository_interface.dart';

@LazySingleton(
  as: RemoteOptionsRepositoryInterface,
  env: [Environment.test],
)
class MockRemoteOptionsRepository extends Mock implements RemoteOptionsRepositoryInterface {}
