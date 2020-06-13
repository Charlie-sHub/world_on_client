import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/core/error/failures.dart';

part 'core_data_failure.freezed.dart';

@freezed
abstract class CoreDataFailure extends Failure with _$CoreDataFailure {
  const factory CoreDataFailure.serverError() = ServerError;

  const factory CoreDataFailure.notFoundError() = NotFoundError;

  const factory CoreDataFailure.cacheError() = CacheError;

  const factory CoreDataFailure.geoLocationError() = GeoLocationError;

  // Came from AuthenticationFailure, moved here because of user editing in the profile feature, maybe should create a "user_management" feature in the future
  const factory CoreDataFailure.usernameAlreadyInUse() = UsernameAlreadyInUse;

  const factory CoreDataFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  /// For all creation/modification use cases of entities that require unique names
  const factory CoreDataFailure.nameAlreadyInUse() = NameAlreadyInUse;
}
