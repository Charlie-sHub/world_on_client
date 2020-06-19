import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_domain_failure.freezed.dart';

@freezed
abstract class AuthenticationDomainFailure<T> with _$AuthenticationDomainFailure {
  const factory AuthenticationDomainFailure.cancelledByUser() = CancelledByUser<T>;
}
