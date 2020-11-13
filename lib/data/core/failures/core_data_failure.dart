import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:worldon/domain/core/validation/objects/email_address.dart';
import 'package:worldon/domain/core/validation/objects/name.dart';

part 'core_data_failure.freezed.dart';

@freezed
abstract class CoreDataFailure<T> with _$CoreDataFailure<T> {
  const factory CoreDataFailure.serverError({@required String errorString}) = ServerError<T>;

  const factory CoreDataFailure.notFoundError() = NotFoundError<T>;

  const factory CoreDataFailure.cacheError({@required String errorString}) = CacheError<T>;

  const factory CoreDataFailure.geoLocationError({@required String errorString}) = GeoLocationError<T>;

  // Came from failure, moved here because of user editing in the profile feature, maybe should create a "user_management" feature in the future
  const factory CoreDataFailure.usernameAlreadyInUse({@required Name username}) = UsernameAlreadyInUse<T>;

  // It's not really necessary to use the value objects for the errors
  const factory CoreDataFailure.emailAlreadyInUse({@required EmailAddress email}) = EmailAlreadyInUse<T>;

  /// For all creation/modification use cases of entities that require unique names
  const factory CoreDataFailure.nameAlreadyInUse({@required Name name}) = NameAlreadyInUse<T>;
}
