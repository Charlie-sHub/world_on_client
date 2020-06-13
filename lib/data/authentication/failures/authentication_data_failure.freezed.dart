// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'authentication_data_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticationDataFailureTearOff {
  const _$AuthenticationDataFailureTearOff();

  InvalidCredentials invalidCredentials() {
    return const InvalidCredentials();
  }

  NoUserInCache noUserInCache() {
    return const NoUserInCache();
  }
}

// ignore: unused_element
const $AuthenticationDataFailure = _$AuthenticationDataFailureTearOff();

mixin _$AuthenticationDataFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidCredentials(),
    @required Result noUserInCache(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidCredentials(),
    Result noUserInCache(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidCredentials(InvalidCredentials value),
    @required Result noUserInCache(NoUserInCache value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidCredentials(InvalidCredentials value),
    Result noUserInCache(NoUserInCache value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationDataFailureCopyWith<$Res> {
  factory $AuthenticationDataFailureCopyWith(AuthenticationDataFailure value, $Res Function(AuthenticationDataFailure) then) = _$AuthenticationDataFailureCopyWithImpl<$Res>;
}

class _$AuthenticationDataFailureCopyWithImpl<$Res> implements $AuthenticationDataFailureCopyWith<$Res> {
  _$AuthenticationDataFailureCopyWithImpl(this._value, this._then);

  final AuthenticationDataFailure _value;

  // ignore: unused_field
  final $Res Function(AuthenticationDataFailure) _then;
}

abstract class $InvalidCredentialsCopyWith<$Res> {
  factory $InvalidCredentialsCopyWith(InvalidCredentials value, $Res Function(InvalidCredentials) then) = _$InvalidCredentialsCopyWithImpl<$Res>;
}

class _$InvalidCredentialsCopyWithImpl<$Res> extends _$AuthenticationDataFailureCopyWithImpl<$Res> implements $InvalidCredentialsCopyWith<$Res> {
  _$InvalidCredentialsCopyWithImpl(InvalidCredentials _value, $Res Function(InvalidCredentials) _then) : super(_value, (v) => _then(v as InvalidCredentials));

  @override
  InvalidCredentials get _value => super._value as InvalidCredentials;
}

class _$InvalidCredentials implements InvalidCredentials {
  const _$InvalidCredentials();

  @override
  String toString() {
    return 'AuthenticationDataFailure.invalidCredentials()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidCredentials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidCredentials(),
    @required Result noUserInCache(),
  }) {
    assert(invalidCredentials != null);
    assert(noUserInCache != null);
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidCredentials(),
    Result noUserInCache(),
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
    @required Result invalidCredentials(InvalidCredentials value),
    @required Result noUserInCache(NoUserInCache value),
  }) {
    assert(invalidCredentials != null);
    assert(noUserInCache != null);
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidCredentials(InvalidCredentials value),
    Result noUserInCache(NoUserInCache value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class InvalidCredentials implements AuthenticationDataFailure {
  const factory InvalidCredentials() = _$InvalidCredentials;
}

abstract class $NoUserInCacheCopyWith<$Res> {
  factory $NoUserInCacheCopyWith(NoUserInCache value, $Res Function(NoUserInCache) then) = _$NoUserInCacheCopyWithImpl<$Res>;
}

class _$NoUserInCacheCopyWithImpl<$Res> extends _$AuthenticationDataFailureCopyWithImpl<$Res> implements $NoUserInCacheCopyWith<$Res> {
  _$NoUserInCacheCopyWithImpl(NoUserInCache _value, $Res Function(NoUserInCache) _then) : super(_value, (v) => _then(v as NoUserInCache));

  @override
  NoUserInCache get _value => super._value as NoUserInCache;
}

class _$NoUserInCache implements NoUserInCache {
  const _$NoUserInCache();

  @override
  String toString() {
    return 'AuthenticationDataFailure.noUserInCache()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoUserInCache);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidCredentials(),
    @required Result noUserInCache(),
  }) {
    assert(invalidCredentials != null);
    assert(noUserInCache != null);
    return noUserInCache();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidCredentials(),
    Result noUserInCache(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noUserInCache != null) {
      return noUserInCache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidCredentials(InvalidCredentials value),
    @required Result noUserInCache(NoUserInCache value),
  }) {
    assert(invalidCredentials != null);
    assert(noUserInCache != null);
    return noUserInCache(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidCredentials(InvalidCredentials value),
    Result noUserInCache(NoUserInCache value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noUserInCache != null) {
      return noUserInCache(this);
    }
    return orElse();
  }
}

abstract class NoUserInCache implements AuthenticationDataFailure {
  const factory NoUserInCache() = _$NoUserInCache;
}
