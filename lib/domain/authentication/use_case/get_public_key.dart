import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/domain/authentication/repository/public_key_repository.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

// It's very likely this [UseCase] will be unnecessary as it is the intention to use Firebase
@deprecated
class GetPublicKey implements AsyncUseCase<Uint8List, NoParams> {
  final PublicKeyRepository repository;
  
  GetPublicKey(this.repository);
  
  @override
  Future<Either<Failure, Uint8List>> call(NoParams params) async {
    return await repository.getPublicKey();
  }
}
