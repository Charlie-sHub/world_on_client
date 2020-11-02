import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:worldon/core/error/failure.dart';

@LazySingleton(env: [Environment.prod])
@Deprecated("Using Firebase makes this pretty much unnecessary")
class Cypher {
  Either<Failure, String> call(String text, Uint8List publicKey) {
    return null;
  }
}
