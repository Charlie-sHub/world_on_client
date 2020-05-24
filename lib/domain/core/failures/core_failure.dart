import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/core/error/failures.dart';

part 'core_failure.freezed.dart';

@freezed
abstract class CoreFailure extends Failure with _$CoreFailure {
  const factory CoreFailure.unknownDomainLayerError() = UnknownDomainLayerError;

  const factory CoreFailure.serverError() = ServerError;

  const factory CoreFailure.notFoundError() = NotFoundError;

  const factory CoreFailure.cacheError() = CacheError;

  const factory CoreFailure.geoLocationError() = GeoLocationError;

  /// For all creation/modification use cases of classes que require unique names
  const factory CoreFailure.nameAlreadyInUse() = NameAlreadyInUse;
}
