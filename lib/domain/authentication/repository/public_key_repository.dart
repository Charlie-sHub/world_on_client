import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';

abstract class PublicKeyRepository {
  /// Gets the public key from the server.
  ///
  /// This might become useless in the future, this solution might not be the most scalable one.
  Future<Either<Failure, Uint8List>> getPublicKey();
}
