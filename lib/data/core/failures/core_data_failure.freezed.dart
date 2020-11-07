// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'core_data_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CoreDataFailureTearOff {
  const _$CoreDataFailureTearOff();

// ignore: unused_element
  ServerError<T> serverError<T>({@required String errorString}) {
    return ServerError<T>(
      errorString: errorString,
    );
  }

// ignore: unused_element
  NotFoundError<T> notFoundError<T>() {
    return NotFoundError<T>();
  }

// ignore: unused_element
  CacheError<T> cacheError<T>({@required String errorString}) {
    return CacheError<T>(
      errorString: errorString,
    );
  }

// ignore: unused_element
  GeoLocationError<T> geoLocationError<T>({@required String errorString}) {
    return GeoLocationError<T>(
      errorString: errorString,
    );
  }

// ignore: unused_element
  UsernameAlreadyInUse<T> usernameAlreadyInUse<T>({@required Name username}) {
    return UsernameAlreadyInUse<T>(
      username: username,
    );
  }

// ignore: unused_element
  EmailAlreadyInUse<T> emailAlreadyInUse<T>({@required EmailAddress email}) {
    return EmailAlreadyInUse<T>(
      email: email,
    );
  }

// ignore: unused_element
  NameAlreadyInUse<T> nameAlreadyInUse<T>({@required Name name}) {
    return NameAlreadyInUse<T>(
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CoreDataFailure = _$CoreDataFailureTearOff();

/// @nodoc
mixin _$CoreDataFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String errorString),
    @required Result notFoundError(),
    @required Result cacheError(String errorString),
    @required Result geoLocationError(String errorString),
    @required Result usernameAlreadyInUse(Name username),
    @required Result emailAlreadyInUse(EmailAddress email),
    @required Result nameAlreadyInUse(Name name),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String errorString),
    Result notFoundError(),
    Result cacheError(String errorString),
    Result geoLocationError(String errorString),
    Result usernameAlreadyInUse(Name username),
    Result emailAlreadyInUse(EmailAddress email),
    Result nameAlreadyInUse(Name name),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError<T> value),
    @required Result notFoundError(NotFoundError<T> value),
    @required Result cacheError(CacheError<T> value),
    @required Result geoLocationError(GeoLocationError<T> value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required Result nameAlreadyInUse(NameAlreadyInUse<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError<T> value),
    Result notFoundError(NotFoundError<T> value),
    Result cacheError(CacheError<T> value),
    Result geoLocationError(GeoLocationError<T> value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    Result nameAlreadyInUse(NameAlreadyInUse<T> value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CoreDataFailureCopyWith<T, $Res> {
  factory $CoreDataFailureCopyWith(CoreDataFailure<T> value, $Res Function(CoreDataFailure<T>) then) = _$CoreDataFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CoreDataFailureCopyWithImpl<T, $Res> implements $CoreDataFailureCopyWith<T, $Res> {
  _$CoreDataFailureCopyWithImpl(this._value, this._then);

  final CoreDataFailure<T> _value;

  // ignore: unused_field
  final $Res Function(CoreDataFailure<T>) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<T, $Res> {
  factory $ServerErrorCopyWith(ServerError<T> value, $Res Function(ServerError<T>) then) = _$ServerErrorCopyWithImpl<T, $Res>;

  $Res call({String errorString});
}

/// @nodoc
class _$ServerErrorCopyWithImpl<T, $Res> extends _$CoreDataFailureCopyWithImpl<T, $Res> implements $ServerErrorCopyWith<T, $Res> {
  _$ServerErrorCopyWithImpl(ServerError<T> _value, $Res Function(ServerError<T>) _then) : super(_value, (v) => _then(v as ServerError<T>));

  @override
  ServerError<T> get _value => super._value as ServerError<T>;

  @override
  $Res call({
    Object errorString = freezed,
  }) {
    return _then(ServerError<T>(
      errorString: errorString == freezed ? _value.errorString : errorString as String,
    ));
  }
}

/// @nodoc
class _$ServerError<T> implements ServerError<T> {
  const _$ServerError({@required this.errorString}) : assert(errorString != null);

  @override
  final String errorString;

  @override
  String toString() {
    return 'CoreDataFailure<$T>.serverError(errorString: $errorString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError<T> && (identical(other.errorString, errorString) || const DeepCollectionEquality().equals(other.errorString, errorString)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorString);

  @override
  $ServerErrorCopyWith<T, ServerError<T>> get copyWith => _$ServerErrorCopyWithImpl<T, ServerError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String errorString),
    @required Result notFoundError(),
    @required Result cacheError(String errorString),
    @required Result geoLocationError(String errorString),
    @required Result usernameAlreadyInUse(Name username),
    @required Result emailAlreadyInUse(EmailAddress email),
    @required Result nameAlreadyInUse(Name name),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return serverError(errorString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String errorString),
    Result notFoundError(),
    Result cacheError(String errorString),
    Result geoLocationError(String errorString),
    Result usernameAlreadyInUse(Name username),
    Result emailAlreadyInUse(EmailAddress email),
    Result nameAlreadyInUse(Name name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(errorString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError<T> value),
    @required Result notFoundError(NotFoundError<T> value),
    @required Result cacheError(CacheError<T> value),
    @required Result geoLocationError(GeoLocationError<T> value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required Result nameAlreadyInUse(NameAlreadyInUse<T> value),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError<T> value),
    Result notFoundError(NotFoundError<T> value),
    Result cacheError(CacheError<T> value),
    Result geoLocationError(GeoLocationError<T> value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    Result nameAlreadyInUse(NameAlreadyInUse<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError<T> implements CoreDataFailure<T> {
  const factory ServerError({@required String errorString}) = _$ServerError<T>;

  String get errorString;
  $ServerErrorCopyWith<T, ServerError<T>> get copyWith;
}

/// @nodoc
abstract class $NotFoundErrorCopyWith<T, $Res> {
  factory $NotFoundErrorCopyWith(NotFoundError<T> value, $Res Function(NotFoundError<T>) then) = _$NotFoundErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NotFoundErrorCopyWithImpl<T, $Res> extends _$CoreDataFailureCopyWithImpl<T, $Res> implements $NotFoundErrorCopyWith<T, $Res> {
  _$NotFoundErrorCopyWithImpl(NotFoundError<T> _value, $Res Function(NotFoundError<T>) _then) : super(_value, (v) => _then(v as NotFoundError<T>));

  @override
  NotFoundError<T> get _value => super._value as NotFoundError<T>;
}

/// @nodoc
class _$NotFoundError<T> implements NotFoundError<T> {
  const _$NotFoundError();

  @override
  String toString() {
    return 'CoreDataFailure<$T>.notFoundError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotFoundError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String errorString),
    @required Result notFoundError(),
    @required Result cacheError(String errorString),
    @required Result geoLocationError(String errorString),
    @required Result usernameAlreadyInUse(Name username),
    @required Result emailAlreadyInUse(EmailAddress email),
    @required Result nameAlreadyInUse(Name name),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return notFoundError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String errorString),
    Result notFoundError(),
    Result cacheError(String errorString),
    Result geoLocationError(String errorString),
    Result usernameAlreadyInUse(Name username),
    Result emailAlreadyInUse(EmailAddress email),
    Result nameAlreadyInUse(Name name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFoundError != null) {
      return notFoundError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError<T> value),
    @required Result notFoundError(NotFoundError<T> value),
    @required Result cacheError(CacheError<T> value),
    @required Result geoLocationError(GeoLocationError<T> value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required Result nameAlreadyInUse(NameAlreadyInUse<T> value),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return notFoundError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError<T> value),
    Result notFoundError(NotFoundError<T> value),
    Result cacheError(CacheError<T> value),
    Result geoLocationError(GeoLocationError<T> value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    Result nameAlreadyInUse(NameAlreadyInUse<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFoundError != null) {
      return notFoundError(this);
    }
    return orElse();
  }
}

abstract class NotFoundError<T> implements CoreDataFailure<T> {
  const factory NotFoundError() = _$NotFoundError<T>;
}

/// @nodoc
abstract class $CacheErrorCopyWith<T, $Res> {
  factory $CacheErrorCopyWith(CacheError<T> value, $Res Function(CacheError<T>) then) = _$CacheErrorCopyWithImpl<T, $Res>;

  $Res call({String errorString});
}

/// @nodoc
class _$CacheErrorCopyWithImpl<T, $Res> extends _$CoreDataFailureCopyWithImpl<T, $Res> implements $CacheErrorCopyWith<T, $Res> {
  _$CacheErrorCopyWithImpl(CacheError<T> _value, $Res Function(CacheError<T>) _then) : super(_value, (v) => _then(v as CacheError<T>));

  @override
  CacheError<T> get _value => super._value as CacheError<T>;

  @override
  $Res call({
    Object errorString = freezed,
  }) {
    return _then(CacheError<T>(
      errorString: errorString == freezed ? _value.errorString : errorString as String,
    ));
  }
}

/// @nodoc
class _$CacheError<T> implements CacheError<T> {
  const _$CacheError({@required this.errorString}) : assert(errorString != null);

  @override
  final String errorString;

  @override
  String toString() {
    return 'CoreDataFailure<$T>.cacheError(errorString: $errorString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CacheError<T> && (identical(other.errorString, errorString) || const DeepCollectionEquality().equals(other.errorString, errorString)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorString);

  @override
  $CacheErrorCopyWith<T, CacheError<T>> get copyWith => _$CacheErrorCopyWithImpl<T, CacheError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String errorString),
    @required Result notFoundError(),
    @required Result cacheError(String errorString),
    @required Result geoLocationError(String errorString),
    @required Result usernameAlreadyInUse(Name username),
    @required Result emailAlreadyInUse(EmailAddress email),
    @required Result nameAlreadyInUse(Name name),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return cacheError(errorString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String errorString),
    Result notFoundError(),
    Result cacheError(String errorString),
    Result geoLocationError(String errorString),
    Result usernameAlreadyInUse(Name username),
    Result emailAlreadyInUse(EmailAddress email),
    Result nameAlreadyInUse(Name name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheError != null) {
      return cacheError(errorString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError<T> value),
    @required Result notFoundError(NotFoundError<T> value),
    @required Result cacheError(CacheError<T> value),
    @required Result geoLocationError(GeoLocationError<T> value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required Result nameAlreadyInUse(NameAlreadyInUse<T> value),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return cacheError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError<T> value),
    Result notFoundError(NotFoundError<T> value),
    Result cacheError(CacheError<T> value),
    Result geoLocationError(GeoLocationError<T> value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    Result nameAlreadyInUse(NameAlreadyInUse<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheError != null) {
      return cacheError(this);
    }
    return orElse();
  }
}

abstract class CacheError<T> implements CoreDataFailure<T> {
  const factory CacheError({@required String errorString}) = _$CacheError<T>;

  String get errorString;
  $CacheErrorCopyWith<T, CacheError<T>> get copyWith;
}

/// @nodoc
abstract class $GeoLocationErrorCopyWith<T, $Res> {
  factory $GeoLocationErrorCopyWith(GeoLocationError<T> value, $Res Function(GeoLocationError<T>) then) = _$GeoLocationErrorCopyWithImpl<T, $Res>;

  $Res call({String errorString});
}

/// @nodoc
class _$GeoLocationErrorCopyWithImpl<T, $Res> extends _$CoreDataFailureCopyWithImpl<T, $Res> implements $GeoLocationErrorCopyWith<T, $Res> {
  _$GeoLocationErrorCopyWithImpl(GeoLocationError<T> _value, $Res Function(GeoLocationError<T>) _then) : super(_value, (v) => _then(v as GeoLocationError<T>));

  @override
  GeoLocationError<T> get _value => super._value as GeoLocationError<T>;

  @override
  $Res call({
    Object errorString = freezed,
  }) {
    return _then(GeoLocationError<T>(
      errorString: errorString == freezed ? _value.errorString : errorString as String,
    ));
  }
}

/// @nodoc
class _$GeoLocationError<T> implements GeoLocationError<T> {
  const _$GeoLocationError({@required this.errorString}) : assert(errorString != null);

  @override
  final String errorString;

  @override
  String toString() {
    return 'CoreDataFailure<$T>.geoLocationError(errorString: $errorString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GeoLocationError<T> && (identical(other.errorString, errorString) || const DeepCollectionEquality().equals(other.errorString, errorString)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorString);

  @override
  $GeoLocationErrorCopyWith<T, GeoLocationError<T>> get copyWith => _$GeoLocationErrorCopyWithImpl<T, GeoLocationError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String errorString),
    @required Result notFoundError(),
    @required Result cacheError(String errorString),
    @required Result geoLocationError(String errorString),
    @required Result usernameAlreadyInUse(Name username),
    @required Result emailAlreadyInUse(EmailAddress email),
    @required Result nameAlreadyInUse(Name name),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return geoLocationError(errorString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String errorString),
    Result notFoundError(),
    Result cacheError(String errorString),
    Result geoLocationError(String errorString),
    Result usernameAlreadyInUse(Name username),
    Result emailAlreadyInUse(EmailAddress email),
    Result nameAlreadyInUse(Name name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (geoLocationError != null) {
      return geoLocationError(errorString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError<T> value),
    @required Result notFoundError(NotFoundError<T> value),
    @required Result cacheError(CacheError<T> value),
    @required Result geoLocationError(GeoLocationError<T> value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required Result nameAlreadyInUse(NameAlreadyInUse<T> value),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return geoLocationError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError<T> value),
    Result notFoundError(NotFoundError<T> value),
    Result cacheError(CacheError<T> value),
    Result geoLocationError(GeoLocationError<T> value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    Result nameAlreadyInUse(NameAlreadyInUse<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (geoLocationError != null) {
      return geoLocationError(this);
    }
    return orElse();
  }
}

abstract class GeoLocationError<T> implements CoreDataFailure<T> {
  const factory GeoLocationError({@required String errorString}) = _$GeoLocationError<T>;

  String get errorString;

  $GeoLocationErrorCopyWith<T, GeoLocationError<T>> get copyWith;
}

/// @nodoc
abstract class $UsernameAlreadyInUseCopyWith<T, $Res> {
  factory $UsernameAlreadyInUseCopyWith(UsernameAlreadyInUse<T> value, $Res Function(UsernameAlreadyInUse<T>) then) = _$UsernameAlreadyInUseCopyWithImpl<T, $Res>;
  $Res call({Name username});
}

/// @nodoc
class _$UsernameAlreadyInUseCopyWithImpl<T, $Res> extends _$CoreDataFailureCopyWithImpl<T, $Res> implements $UsernameAlreadyInUseCopyWith<T, $Res> {
  _$UsernameAlreadyInUseCopyWithImpl(UsernameAlreadyInUse<T> _value, $Res Function(UsernameAlreadyInUse<T>) _then) : super(_value, (v) => _then(v as UsernameAlreadyInUse<T>));

  @override
  UsernameAlreadyInUse<T> get _value => super._value as UsernameAlreadyInUse<T>;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(UsernameAlreadyInUse<T>(
      username: username == freezed ? _value.username : username as Name,
    ));
  }
}

/// @nodoc
class _$UsernameAlreadyInUse<T> implements UsernameAlreadyInUse<T> {
  const _$UsernameAlreadyInUse({@required this.username}) : assert(username != null);

  @override
  final Name username;

  @override
  String toString() {
    return 'CoreDataFailure<$T>.usernameAlreadyInUse(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UsernameAlreadyInUse<T> && (identical(other.username, username) || const DeepCollectionEquality().equals(other.username, username)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @override
  $UsernameAlreadyInUseCopyWith<T, UsernameAlreadyInUse<T>> get copyWith => _$UsernameAlreadyInUseCopyWithImpl<T, UsernameAlreadyInUse<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String errorString),
    @required Result notFoundError(),
    @required Result cacheError(String errorString),
    @required Result geoLocationError(String errorString),
    @required Result usernameAlreadyInUse(Name username),
    @required Result emailAlreadyInUse(EmailAddress email),
    @required Result nameAlreadyInUse(Name name),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return usernameAlreadyInUse(username);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String errorString),
    Result notFoundError(),
    Result cacheError(String errorString),
    Result geoLocationError(String errorString),
    Result usernameAlreadyInUse(Name username),
    Result emailAlreadyInUse(EmailAddress email),
    Result nameAlreadyInUse(Name name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameAlreadyInUse != null) {
      return usernameAlreadyInUse(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError<T> value),
    @required Result notFoundError(NotFoundError<T> value),
    @required Result cacheError(CacheError<T> value),
    @required Result geoLocationError(GeoLocationError<T> value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required Result nameAlreadyInUse(NameAlreadyInUse<T> value),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return usernameAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError<T> value),
    Result notFoundError(NotFoundError<T> value),
    Result cacheError(CacheError<T> value),
    Result geoLocationError(GeoLocationError<T> value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    Result nameAlreadyInUse(NameAlreadyInUse<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameAlreadyInUse != null) {
      return usernameAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class UsernameAlreadyInUse<T> implements CoreDataFailure<T> {
  const factory UsernameAlreadyInUse({@required Name username}) = _$UsernameAlreadyInUse<T>;

  Name get username;

  $UsernameAlreadyInUseCopyWith<T, UsernameAlreadyInUse<T>> get copyWith;
}

/// @nodoc
abstract class $EmailAlreadyInUseCopyWith<T, $Res> {
  factory $EmailAlreadyInUseCopyWith(EmailAlreadyInUse<T> value, $Res Function(EmailAlreadyInUse<T>) then) = _$EmailAlreadyInUseCopyWithImpl<T, $Res>;
  $Res call({EmailAddress email});
}

/// @nodoc
class _$EmailAlreadyInUseCopyWithImpl<T, $Res> extends _$CoreDataFailureCopyWithImpl<T, $Res> implements $EmailAlreadyInUseCopyWith<T, $Res> {
  _$EmailAlreadyInUseCopyWithImpl(EmailAlreadyInUse<T> _value, $Res Function(EmailAlreadyInUse<T>) _then) : super(_value, (v) => _then(v as EmailAlreadyInUse<T>));

  @override
  EmailAlreadyInUse<T> get _value => super._value as EmailAlreadyInUse<T>;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailAlreadyInUse<T>(
      email: email == freezed ? _value.email : email as EmailAddress,
    ));
  }
}

/// @nodoc
class _$EmailAlreadyInUse<T> implements EmailAlreadyInUse<T> {
  const _$EmailAlreadyInUse({@required this.email}) : assert(email != null);

  @override
  final EmailAddress email;

  @override
  String toString() {
    return 'CoreDataFailure<$T>.emailAlreadyInUse(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse<T> && (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailAlreadyInUseCopyWith<T, EmailAlreadyInUse<T>> get copyWith => _$EmailAlreadyInUseCopyWithImpl<T, EmailAlreadyInUse<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String errorString),
    @required Result notFoundError(),
    @required Result cacheError(String errorString),
    @required Result geoLocationError(String errorString),
    @required Result usernameAlreadyInUse(Name username),
    @required Result emailAlreadyInUse(EmailAddress email),
    @required Result nameAlreadyInUse(Name name),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return emailAlreadyInUse(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String errorString),
    Result notFoundError(),
    Result cacheError(String errorString),
    Result geoLocationError(String errorString),
    Result usernameAlreadyInUse(Name username),
    Result emailAlreadyInUse(EmailAddress email),
    Result nameAlreadyInUse(Name name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError<T> value),
    @required Result notFoundError(NotFoundError<T> value),
    @required Result cacheError(CacheError<T> value),
    @required Result geoLocationError(GeoLocationError<T> value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required Result nameAlreadyInUse(NameAlreadyInUse<T> value),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError<T> value),
    Result notFoundError(NotFoundError<T> value),
    Result cacheError(CacheError<T> value),
    Result geoLocationError(GeoLocationError<T> value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    Result nameAlreadyInUse(NameAlreadyInUse<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse<T> implements CoreDataFailure<T> {
  const factory EmailAlreadyInUse({@required EmailAddress email}) = _$EmailAlreadyInUse<T>;

  EmailAddress get email;

  $EmailAlreadyInUseCopyWith<T, EmailAlreadyInUse<T>> get copyWith;
}

/// @nodoc
abstract class $NameAlreadyInUseCopyWith<T, $Res> {
  factory $NameAlreadyInUseCopyWith(NameAlreadyInUse<T> value, $Res Function(NameAlreadyInUse<T>) then) = _$NameAlreadyInUseCopyWithImpl<T, $Res>;

  $Res call({Name name});
}

/// @nodoc
class _$NameAlreadyInUseCopyWithImpl<T, $Res> extends _$CoreDataFailureCopyWithImpl<T, $Res> implements $NameAlreadyInUseCopyWith<T, $Res> {
  _$NameAlreadyInUseCopyWithImpl(NameAlreadyInUse<T> _value, $Res Function(NameAlreadyInUse<T>) _then) : super(_value, (v) => _then(v as NameAlreadyInUse<T>));

  @override
  NameAlreadyInUse<T> get _value => super._value as NameAlreadyInUse<T>;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(NameAlreadyInUse<T>(
      name: name == freezed ? _value.name : name as Name,
    ));
  }
}

/// @nodoc
class _$NameAlreadyInUse<T> implements NameAlreadyInUse<T> {
  const _$NameAlreadyInUse({@required this.name}) : assert(name != null);

  @override
  final Name name;

  @override
  String toString() {
    return 'CoreDataFailure<$T>.nameAlreadyInUse(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NameAlreadyInUse<T> && (identical(other.name, name) || const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $NameAlreadyInUseCopyWith<T, NameAlreadyInUse<T>> get copyWith => _$NameAlreadyInUseCopyWithImpl<T, NameAlreadyInUse<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String errorString),
    @required Result notFoundError(),
    @required Result cacheError(String errorString),
    @required Result geoLocationError(String errorString),
    @required Result usernameAlreadyInUse(Name username),
    @required Result emailAlreadyInUse(EmailAddress email),
    @required Result nameAlreadyInUse(Name name),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return nameAlreadyInUse(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String errorString),
    Result notFoundError(),
    Result cacheError(String errorString),
    Result geoLocationError(String errorString),
    Result usernameAlreadyInUse(Name username),
    Result emailAlreadyInUse(EmailAddress email),
    Result nameAlreadyInUse(Name name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameAlreadyInUse != null) {
      return nameAlreadyInUse(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError<T> value),
    @required Result notFoundError(NotFoundError<T> value),
    @required Result cacheError(CacheError<T> value),
    @required Result geoLocationError(GeoLocationError<T> value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    @required Result nameAlreadyInUse(NameAlreadyInUse<T> value),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return nameAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError<T> value),
    Result notFoundError(NotFoundError<T> value),
    Result cacheError(CacheError<T> value),
    Result geoLocationError(GeoLocationError<T> value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse<T> value),
    Result emailAlreadyInUse(EmailAlreadyInUse<T> value),
    Result nameAlreadyInUse(NameAlreadyInUse<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameAlreadyInUse != null) {
      return nameAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class NameAlreadyInUse<T> implements CoreDataFailure<T> {
  const factory NameAlreadyInUse({@required Name name}) = _$NameAlreadyInUse<T>;

  Name get name;
  $NameAlreadyInUseCopyWith<T, NameAlreadyInUse<T>> get copyWith;
}
