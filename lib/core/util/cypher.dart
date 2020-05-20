import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:worldon/core/error/failures.dart';

// With the use of Firebase this class will likely be unnecessary
class Cypher {
  Either<EncryptionFailure, String> call(String text, Uint8List publicKey) {
    // TODO: Implement cyphering
    return null;
  }
}
