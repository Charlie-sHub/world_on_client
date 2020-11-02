import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_data_failure.freezed.dart';

@freezed
abstract class AuthenticationDataFailure<T> with _$AuthenticationDataFailure<T> {
  const factory AuthenticationDataFailure.invalidCredentials() = InvalidCredentials<T>;

// This failure makes no sense with Firebase
// const factory AuthenticationDataFailure.noUserInCache() = NoUserInCache<T>;
}
