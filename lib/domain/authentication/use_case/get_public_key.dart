import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/domain/authentication/repository/public_key_repository_interface.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

@Deprecated("It's very likely this [UseCase] will be unnecessary as it is the intention to use Firebase")
@lazySingleton
class GetPublicKey implements AsyncUseCase<Uint8List, NoParams> {
  final PublicKeyRepositoryInterface _repository;

  GetPublicKey(this._repository);

  @override
  Future<Either<Failure, Uint8List>> call(NoParams params) async {
    return _repository.getPublicKey();
  }
}
