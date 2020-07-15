import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/application/core/failures/core_application_failure.dart';
import 'package:worldon/data/authentication/failures/authentication_data_failure.dart';
import 'package:worldon/data/core/failures/core_data_failure.dart';
import 'package:worldon/domain/authentication/failures/authentication_domain_failure.dart';
import 'package:worldon/domain/core/failures/core_domain_failure.dart';
import 'package:worldon/domain/core/failures/value_failure.dart';
import 'package:worldon/domain/profile/failures/profile_domain_failure.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure<T> with _$Failure<T> {
  const factory Failure.authenticationDomain(AuthenticationDomainFailure<T> authenticationDomainFailure) = _AuthenticationDomain<T>;

  const factory Failure.authenticationData(AuthenticationDataFailure<T> authenticationDataFailure) = _AuthenticationData<T>;

  const factory Failure.coreDomain(CoreDomainFailure<T> coreDomainFailure) = _CoreDomain<T>;

  const factory Failure.coreApplication(CoreApplicationFailure<T> coreApplicationFailure) = _CoreAppllication<T>;

  const factory Failure.coreData(CoreDataFailure<T> coreDataFailure) = _CoreData<T>;

  const factory Failure.value(ValueFailure<T> valueFailure) = _Value<T>;

  const factory Failure.profileDomain(ProfileDomainFailure<T> profileDomainFailure) = _ProfileDomain<T>;
// TODO: Create ProfileDataFailure
}
