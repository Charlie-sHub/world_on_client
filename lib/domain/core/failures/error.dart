import 'package:worldon/domain/core/failures/value_failure.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = "Encountered an unexpected value from an unrecoverable point";
    return Error.safeToString("$explanation: $valueFailure");
  }
}