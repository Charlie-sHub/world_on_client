import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';

// With the use of Firebase this class will likely be unnecessary
class Cypher {
  Either<Failure, String> call(String text, Uint8List publicKey) {
    // TODO Implement cyphering
  }
}
