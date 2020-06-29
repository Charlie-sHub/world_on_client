import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/core/util/cypher.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

class Encrypt implements UseCase<String, Params> {
  final Cypher cypher;

  Encrypt(this.cypher);

  @override
  Either<Failure, String> call(Params params) {
    /*
    return cypher(
      params.stringToCypher,
      params.publicKey,
    );
    */
    return null;
  }
}

class Params {
  final Uint8List publicKey;

  final String stringToCypher;

  Params({
    @required this.publicKey,
    @required this.stringToCypher,
  });
}
