import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/application/core/failures/core_application_failure.dart';
import 'package:worldon/data/authentication/failures/authentication_data_failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/failures/authentication_domain_failure.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/core/use_case/use_case.dart';

part 'failure.freezed.dart';

/// Meant to be implemented by each failure of each layer and feature, it exists to properly implement [UseCase] and [AsyncUseCase]
@freezed
abstract class Failure<T> with _$Failure<T> {
  const factory Failure.authenticationDomain(AuthenticationDomainFailure<T> f) = _AuthenticationDomain<T>;

  const factory Failure.authenticationData(AuthenticationDataFailure<T> f) = _AuthenticationData<T>;

  const factory Failure.coreDomain(CoreDomainFailure<T> f) = _CoreDomain<T>;

  const factory Failure.coreApplication(CoreApplicationFailure<T> f) = _CoreAppllication<T>;

  const factory Failure.coreData(CoreDataFailure<T> f) = _CoreData<T>;

  const factory Failure.value(ValueFailure<T> f) = _Value<T>;
}
