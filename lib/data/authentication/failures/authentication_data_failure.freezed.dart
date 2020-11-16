// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_data_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthenticationDataFailureTearOff {
  const _$AuthenticationDataFailureTearOff();

// ignore: unused_element
  InvalidCredentials<T> invalidCredentials<T>() {
    return InvalidCredentials<T>();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationDataFailure = _$AuthenticationDataFailureTearOff();

/// @nodoc
mixin _$AuthenticationDataFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidCredentials(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidCredentials(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidCredentials(InvalidCredentials<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidCredentials(InvalidCredentials<T> value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationDataFailureCopyWith<T, $Res> {
  factory $AuthenticationDataFailureCopyWith(AuthenticationDataFailure<T> value, $Res Function(AuthenticationDataFailure<T>) then) = _$AuthenticationDataFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AuthenticationDataFailureCopyWithImpl<T, $Res>
  implements $AuthenticationDataFailureCopyWith<T, $Res> {
  _$AuthenticationDataFailureCopyWithImpl(this._value, this._then);
  
  final AuthenticationDataFailure<T> _value;
  
  // ignore: unused_field
  final $Res Function(AuthenticationDataFailure<T>) _then;
}

/// @nodoc
abstract class $InvalidCredentialsCopyWith<T, $Res> {
  factory $InvalidCredentialsCopyWith(InvalidCredentials<T> value,
    $Res Function(InvalidCredentials<T>) then) =
  _$InvalidCredentialsCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$InvalidCredentialsCopyWithImpl<T, $Res> extends _$AuthenticationDataFailureCopyWithImpl<T, $Res>
  implements $InvalidCredentialsCopyWith<T, $Res> {
  _$InvalidCredentialsCopyWithImpl(InvalidCredentials<T> _value, $Res Function(InvalidCredentials<T>) _then)
    : super(_value, (v) => _then(v as InvalidCredentials<T>));
  
  @override
  InvalidCredentials<T> get _value => super._value as InvalidCredentials<T>;
}

/// @nodoc
class _$InvalidCredentials<T> implements InvalidCredentials<T> {
  const _$InvalidCredentials();

  @override
  String toString() {
    return 'AuthenticationDataFailure<$T>.invalidCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidCredentials<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidCredentials(),
  }) {
    assert(invalidCredentials != null);
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidCredentials(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidCredentials(InvalidCredentials<T> value),
  }) {
    assert(invalidCredentials != null);
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidCredentials(InvalidCredentials<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class InvalidCredentials<T> implements AuthenticationDataFailure<T> {
  const factory InvalidCredentials() = _$InvalidCredentials<T>;
}
