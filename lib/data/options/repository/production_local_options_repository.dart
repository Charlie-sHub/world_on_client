import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/options/repository/local_options_repository_interface.dart';

@LazySingleton(
  as: LocalOptionsRepositoryInterface,
  env: Environment.prod,
)
class ProductionLocalOptionsRepository implements LocalOptionsRepositoryInterface {
  @override
  Future<Either<Failure, Unit>> saveLocalOptions(Options option) {
    // TODO: implement saveLocalOptions
    throw UnimplementedError();
  }
}
