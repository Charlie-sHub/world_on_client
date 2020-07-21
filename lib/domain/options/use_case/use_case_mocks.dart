import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/options/use_case/delete_user.dart';
import 'package:worldon/domain/options/use_case/save_global_options.dart';

@LazySingleton(as: DeleteUser, env: [Environment.test])
class MockDeleteUser extends Mock implements DeleteUser {}

@LazySingleton(as: SaveGlobalOptions, env: [Environment.test])
class MockSaveGlobalOptions extends Mock implements SaveGlobalOptions {}
