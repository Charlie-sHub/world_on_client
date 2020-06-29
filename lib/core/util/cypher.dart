import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';

// With the use of Firebase this class will likely be unnecessary
@lazySingleton
class Cypher {
  Either<Failure, String> call(String text, Uint8List publicKey) {
    // TODO: Implement cyphering
    return null;
  }
}
