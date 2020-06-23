import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/core/entities/options.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';
import 'package:worldon/domain/options/repository/remote_options_repository_interface.dart';

class SaveGlobalOptions implements AsyncUseCase<Unit, Params> {
  final RemoteOptionsRepositoryInterface _repository;

  SaveGlobalOptions(this._repository);

  @override
  Future<Either<Failure, Unit>> call(Params params) async {
    final options = Options(
      id: null,
      languageCode: params.languageCode,
    );
    return _repository.saveGlobalOptions(
      userId: params.userId,
      option: options,
    );
  }
}

class Params {
  final String languageCode;
  final int userId;

  Params({
    @required this.languageCode,
    @required this.userId,
  });
}
