import 'package:injectable/injectable.dart';
import 'package:worldon/domain/core/repository/core_repository_interface.dart';

@LazySingleton(as: CoreRepositoryInterface, env: [Environment.prod])
class ProductionCoreRepository implements CoreRepositoryInterface {}
