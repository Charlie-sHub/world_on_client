import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:worldon/core/errors/general_errors/failures.dart';
import 'package:worldon/core/use_case/use_case.dart';
import 'package:worldon/core/util/cypher.dart';

class Encrypt extends UseCase<String, Params> {
  final Cypher cypher;

  Encrypt(this.cypher);

  @override
  Future<Either<Failure, String>> call(Params params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

class Params {
  final Uint8List publicKey;

  final String stringToCypher;

  Params({this.publicKey, this.stringToCypher});
}
