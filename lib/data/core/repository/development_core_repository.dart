import 'package:injectable/injectable.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';

@LazySingleton(as: CoreRepositoryInterface, env: [Environment.dev])
class DevelopmentCoreRepository implements CoreRepositoryInterface {}
