import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/authentication/use_case/get_cached_user.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/domain/authentication/use_case/log_in.dart';
import 'package:worldon/domain/authentication/use_case/log_in_google.dart';
import 'package:worldon/domain/authentication/use_case/log_out.dart';
import 'package:worldon/domain/authentication/use_case/register.dart';

@LazySingleton(as: GetCachedUser, env: Environment.test)
class MockGetCachedUser extends Mock implements GetCachedUser {}

@LazySingleton(as: GetLoggedInUser, env: Environment.test)
class MockGetLoggedInUser extends Mock implements GetLoggedInUser {}

@LazySingleton(as: LogIn, env: Environment.test)
class MockLogIn extends Mock implements LogIn {}

@LazySingleton(as: LogInGoogle, env: Environment.test)
class MockLogInGoogle extends Mock implements LogInGoogle {}

@LazySingleton(as: LogOut, env: Environment.test)
class MockLogOut extends Mock implements LogOut {}

@LazySingleton(as: Register, env: Environment.test)
class MockRegister extends Mock implements Register {}
