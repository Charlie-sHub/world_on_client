import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/options/repository/remote_options_repository_interface.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class SaveGlobalOptions implements AsyncUseCase<Unit, Params> {
  final RemoteOptionsRepositoryInterface _repository;

  SaveGlobalOptions(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async =>
      _repository.saveGlobalOptions(params.options);
}

class Params {
  final Options options;

  Params({
    required this.options,
  });
}
