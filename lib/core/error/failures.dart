import 'package:worldon/domain/core/use_case/use_case.dart';

/// Meant to be implemented by each failure of each layer and feature, it exists to properly implement [UseCase] and [AsyncUseCase]
abstract class Failure {}

// There's probably no good reason for this Failure, manual local encryption is likely unnecessary, plus other Failures will use/are using the freezed method
@deprecated
class EncryptionFailure extends Failure {
  static const failureMessage = "There's been an error when trying to cypher the given String";
}
