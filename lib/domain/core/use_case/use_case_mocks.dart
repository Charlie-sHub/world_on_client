import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/core/use_case/get_current_location.dart';
import 'package:worldon/domain/core/use_case/is_logged_in_user.dart';
import 'package:worldon/domain/core/use_case/watch_current_user.dart';

@LazySingleton(as: GetCurrentLocation, env: [Environment.test])
class MockGetCurrentLocation extends Mock implements GetCurrentLocation {}

@LazySingleton(as: IsLoggedInUser, env: [Environment.test])
class MockIsLoggedInUser extends Mock implements IsLoggedInUser {}

@LazySingleton(as: WatchCurrentUser, env: [Environment.test])
class MockWatchCurrentUser extends Mock implements WatchCurrentUser {}
