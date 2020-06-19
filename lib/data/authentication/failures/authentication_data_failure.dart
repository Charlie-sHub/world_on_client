import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_data_failure.freezed.dart';

@freezed
abstract class AuthenticationDataFailure<T> with _$AuthenticationDataFailure<T> {
  const factory AuthenticationDataFailure.invalidCredentials() = InvalidCredentials<T>;

  const factory AuthenticationDataFailure.noUserInCache() = NoUserInCache<T>;
}
