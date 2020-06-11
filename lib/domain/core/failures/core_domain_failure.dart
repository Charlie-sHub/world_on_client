import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/core/error/failures.dart';

part 'core_domain_failure.freezed.dart';

@freezed
abstract class CoreDomainFailure extends Failure with _$CoreDomainFailure {
  const factory CoreDomainFailure.unknownDomainLayerError() = UnknownDomainLayerError;

  const factory CoreDomainFailure.unAuthorizedError() = UnAuthorizedError;
}
