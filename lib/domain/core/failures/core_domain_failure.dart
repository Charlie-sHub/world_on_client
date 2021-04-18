import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_domain_failure.freezed.dart';

@freezed
class CoreDomainFailure<T> with _$CoreDomainFailure<T> {
  const factory CoreDomainFailure.unknownDomainLayerError({required String errorString}) = UnknownDomainLayerError<T>;

  const factory CoreDomainFailure.domainLayerError({required String errorString}) = DomainLayerError<T>;

  const factory CoreDomainFailure.unAuthorizedError() = UnAuthorizedError<T>;
}
