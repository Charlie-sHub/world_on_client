import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_application_failure.freezed.dart';

@freezed
abstract class CoreApplicationFailure<T> with _$CoreApplicationFailure<T> {
  const factory CoreApplicationFailure.unknownApplicationLayerError({@required String errorString}) = UnknownApplicationLayerError<T>;
}
