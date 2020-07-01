import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/use_case/delete_cache.dart';
import 'package:worldon/domain/core/use_case/get_current_location.dart';

@LazySingleton(as: DeleteCache, env: Environment.test)
class MockDeleteCache extends Mock implements DeleteCache {}

@LazySingleton(as: GetCurrentLocation, env: Environment.test)
class MockGetCurrentLocation extends Mock implements GetCurrentLocation {}
