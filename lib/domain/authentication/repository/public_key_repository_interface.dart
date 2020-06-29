import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failure.dart';

@Deprecated("Firebase likely makes this pointless")
abstract class PublicKeyRepositoryInterface {
  /// Gets the public key from the server.
  ///
  /// This might become useless in the future, this solution might not be the most scalable one.
  Future<Either<Failure, Uint8List>> getPublicKey();
}
