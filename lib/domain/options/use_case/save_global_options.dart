import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:worldon/core/error/failures.dart';
import 'package:worldon/domain/core/entities/options.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/options/repository/remote_options_repository.dart';

class SaveGlobalOptions implements AsyncUseCase<Unit, Params> {
  final RemoteOptionsRepository repository;

  const SaveGlobalOptions(this.repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    return repository.saveGlobalOptions(params.options);
  }
}

class Params {
  final Options options;

  Params({@required this.options});
}
