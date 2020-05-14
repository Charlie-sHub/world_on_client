import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/core/use_case/use_case.dart';
import 'package:worldon/features/authentication/domain/repository/public_key_repository.dart';

class GetPublicKey implements AsyncUseCase<Uint8List, NoParams> {
  final PublicKeyRepository repository;

  GetPublicKey(this.repository);

  @override
  Future<Either<Failure, Uint8List>> call(NoParams params) async {
    return repository.getPublicKey();
  }
}
