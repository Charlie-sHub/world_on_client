import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/core/error/failures.dart';

part 'authentication_domain_failure.freezed.dart';

@freezed
abstract class AuthenticationDomainFailure extends Failure with _$AuthenticationDomainFailure {
  const factory AuthenticationDomainFailure.cancelledByUser() = CancelledByUser;
}
