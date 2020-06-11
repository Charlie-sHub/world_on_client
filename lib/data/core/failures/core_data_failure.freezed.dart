// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'core_data_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CoreDataFailureTearOff {
  const _$CoreDataFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  NotFoundError notFoundError() {
    return const NotFoundError();
  }

  CacheError cacheError() {
    return const CacheError();
  }

  GeoLocationError geoLocationError() {
    return const GeoLocationError();
  }

  UsernameAlreadyInUse usernameAlreadyInUse() {
    return const UsernameAlreadyInUse();
  }

  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

  NameAlreadyInUse nameAlreadyInUse() {
    return const NameAlreadyInUse();
  }
}

// ignore: unused_element
const $CoreDataFailure = _$CoreDataFailureTearOff();

mixin _$CoreDataFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notFoundError(),
    @required Result cacheError(),
    @required Result geoLocationError(),
    @required Result usernameAlreadyInUse(),
    @required Result emailAlreadyInUse(),
    @required Result nameAlreadyInUse(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result notFoundError(),
    Result cacheError(),
    Result geoLocationError(),
    Result usernameAlreadyInUse(),
    Result emailAlreadyInUse(),
    Result nameAlreadyInUse(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notFoundError(NotFoundError value),
    @required Result cacheError(CacheError value),
    @required Result geoLocationError(GeoLocationError value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result nameAlreadyInUse(NameAlreadyInUse value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result notFoundError(NotFoundError value),
    Result cacheError(CacheError value),
    Result geoLocationError(GeoLocationError value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result nameAlreadyInUse(NameAlreadyInUse value),
    @required Result orElse(),
  });
}

abstract class $CoreDataFailureCopyWith<$Res> {
  factory $CoreDataFailureCopyWith(CoreDataFailure value, $Res Function(CoreDataFailure) then) = _$CoreDataFailureCopyWithImpl<$Res>;
}

class _$CoreDataFailureCopyWithImpl<$Res> implements $CoreDataFailureCopyWith<$Res> {
  _$CoreDataFailureCopyWithImpl(this._value, this._then);

  final CoreDataFailure _value;

  // ignore: unused_field
  final $Res Function(CoreDataFailure) _then;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(ServerError value, $Res Function(ServerError) then) = _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$CoreDataFailureCopyWithImpl<$Res> implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(ServerError _value, $Res Function(ServerError) _then) : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'CoreDataFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notFoundError(),
    @required Result cacheError(),
    @required Result geoLocationError(),
    @required Result usernameAlreadyInUse(),
    @required Result emailAlreadyInUse(),
    @required Result nameAlreadyInUse(),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result notFoundError(),
    Result cacheError(),
    Result geoLocationError(),
    Result usernameAlreadyInUse(),
    Result emailAlreadyInUse(),
    Result nameAlreadyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notFoundError(NotFoundError value),
    @required Result cacheError(CacheError value),
    @required Result geoLocationError(GeoLocationError value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result nameAlreadyInUse(NameAlreadyInUse value),
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
    Result serverError(ServerError value),
    Result notFoundError(NotFoundError value),
    Result cacheError(CacheError value),
    Result geoLocationError(GeoLocationError value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result nameAlreadyInUse(NameAlreadyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements CoreDataFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $NotFoundErrorCopyWith<$Res> {
  factory $NotFoundErrorCopyWith(NotFoundError value, $Res Function(NotFoundError) then) = _$NotFoundErrorCopyWithImpl<$Res>;
}

class _$NotFoundErrorCopyWithImpl<$Res> extends _$CoreDataFailureCopyWithImpl<$Res> implements $NotFoundErrorCopyWith<$Res> {
  _$NotFoundErrorCopyWithImpl(NotFoundError _value, $Res Function(NotFoundError) _then) : super(_value, (v) => _then(v as NotFoundError));

  @override
  NotFoundError get _value => super._value as NotFoundError;
}

class _$NotFoundError implements NotFoundError {
  const _$NotFoundError();

  @override
  String toString() {
    return 'CoreDataFailure.notFoundError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotFoundError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notFoundError(),
    @required Result cacheError(),
    @required Result geoLocationError(),
    @required Result usernameAlreadyInUse(),
    @required Result emailAlreadyInUse(),
    @required Result nameAlreadyInUse(),
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
    Result serverError(),
    Result notFoundError(),
    Result cacheError(),
    Result geoLocationError(),
    Result usernameAlreadyInUse(),
    Result emailAlreadyInUse(),
    Result nameAlreadyInUse(),
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
    @required Result serverError(ServerError value),
    @required Result notFoundError(NotFoundError value),
    @required Result cacheError(CacheError value),
    @required Result geoLocationError(GeoLocationError value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result nameAlreadyInUse(NameAlreadyInUse value),
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
    Result serverError(ServerError value),
    Result notFoundError(NotFoundError value),
    Result cacheError(CacheError value),
    Result geoLocationError(GeoLocationError value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result nameAlreadyInUse(NameAlreadyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notFoundError != null) {
      return notFoundError(this);
    }
    return orElse();
  }
}

abstract class NotFoundError implements CoreDataFailure {
  const factory NotFoundError() = _$NotFoundError;
}

abstract class $CacheErrorCopyWith<$Res> {
  factory $CacheErrorCopyWith(CacheError value, $Res Function(CacheError) then) = _$CacheErrorCopyWithImpl<$Res>;
}

class _$CacheErrorCopyWithImpl<$Res> extends _$CoreDataFailureCopyWithImpl<$Res> implements $CacheErrorCopyWith<$Res> {
  _$CacheErrorCopyWithImpl(CacheError _value, $Res Function(CacheError) _then) : super(_value, (v) => _then(v as CacheError));

  @override
  CacheError get _value => super._value as CacheError;
}

class _$CacheError implements CacheError {
  const _$CacheError();

  @override
  String toString() {
    return 'CoreDataFailure.cacheError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CacheError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notFoundError(),
    @required Result cacheError(),
    @required Result geoLocationError(),
    @required Result usernameAlreadyInUse(),
    @required Result emailAlreadyInUse(),
    @required Result nameAlreadyInUse(),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return cacheError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result notFoundError(),
    Result cacheError(),
    Result geoLocationError(),
    Result usernameAlreadyInUse(),
    Result emailAlreadyInUse(),
    Result nameAlreadyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheError != null) {
      return cacheError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notFoundError(NotFoundError value),
    @required Result cacheError(CacheError value),
    @required Result geoLocationError(GeoLocationError value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result nameAlreadyInUse(NameAlreadyInUse value),
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
    Result serverError(ServerError value),
    Result notFoundError(NotFoundError value),
    Result cacheError(CacheError value),
    Result geoLocationError(GeoLocationError value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result nameAlreadyInUse(NameAlreadyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheError != null) {
      return cacheError(this);
    }
    return orElse();
  }
}

abstract class CacheError implements CoreDataFailure {
  const factory CacheError() = _$CacheError;
}

abstract class $GeoLocationErrorCopyWith<$Res> {
  factory $GeoLocationErrorCopyWith(GeoLocationError value, $Res Function(GeoLocationError) then) = _$GeoLocationErrorCopyWithImpl<$Res>;
}

class _$GeoLocationErrorCopyWithImpl<$Res> extends _$CoreDataFailureCopyWithImpl<$Res> implements $GeoLocationErrorCopyWith<$Res> {
  _$GeoLocationErrorCopyWithImpl(GeoLocationError _value, $Res Function(GeoLocationError) _then) : super(_value, (v) => _then(v as GeoLocationError));

  @override
  GeoLocationError get _value => super._value as GeoLocationError;
}

class _$GeoLocationError implements GeoLocationError {
  const _$GeoLocationError();

  @override
  String toString() {
    return 'CoreDataFailure.geoLocationError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GeoLocationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notFoundError(),
    @required Result cacheError(),
    @required Result geoLocationError(),
    @required Result usernameAlreadyInUse(),
    @required Result emailAlreadyInUse(),
    @required Result nameAlreadyInUse(),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return geoLocationError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result notFoundError(),
    Result cacheError(),
    Result geoLocationError(),
    Result usernameAlreadyInUse(),
    Result emailAlreadyInUse(),
    Result nameAlreadyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (geoLocationError != null) {
      return geoLocationError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notFoundError(NotFoundError value),
    @required Result cacheError(CacheError value),
    @required Result geoLocationError(GeoLocationError value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result nameAlreadyInUse(NameAlreadyInUse value),
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
    Result serverError(ServerError value),
    Result notFoundError(NotFoundError value),
    Result cacheError(CacheError value),
    Result geoLocationError(GeoLocationError value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result nameAlreadyInUse(NameAlreadyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (geoLocationError != null) {
      return geoLocationError(this);
    }
    return orElse();
  }
}

abstract class GeoLocationError implements CoreDataFailure {
  const factory GeoLocationError() = _$GeoLocationError;
}

abstract class $UsernameAlreadyInUseCopyWith<$Res> {
  factory $UsernameAlreadyInUseCopyWith(UsernameAlreadyInUse value, $Res Function(UsernameAlreadyInUse) then) = _$UsernameAlreadyInUseCopyWithImpl<$Res>;
}

class _$UsernameAlreadyInUseCopyWithImpl<$Res> extends _$CoreDataFailureCopyWithImpl<$Res> implements $UsernameAlreadyInUseCopyWith<$Res> {
  _$UsernameAlreadyInUseCopyWithImpl(UsernameAlreadyInUse _value, $Res Function(UsernameAlreadyInUse) _then) : super(_value, (v) => _then(v as UsernameAlreadyInUse));

  @override
  UsernameAlreadyInUse get _value => super._value as UsernameAlreadyInUse;
}

class _$UsernameAlreadyInUse implements UsernameAlreadyInUse {
  const _$UsernameAlreadyInUse();

  @override
  String toString() {
    return 'CoreDataFailure.usernameAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UsernameAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notFoundError(),
    @required Result cacheError(),
    @required Result geoLocationError(),
    @required Result usernameAlreadyInUse(),
    @required Result emailAlreadyInUse(),
    @required Result nameAlreadyInUse(),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return usernameAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result notFoundError(),
    Result cacheError(),
    Result geoLocationError(),
    Result usernameAlreadyInUse(),
    Result emailAlreadyInUse(),
    Result nameAlreadyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameAlreadyInUse != null) {
      return usernameAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notFoundError(NotFoundError value),
    @required Result cacheError(CacheError value),
    @required Result geoLocationError(GeoLocationError value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result nameAlreadyInUse(NameAlreadyInUse value),
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
    Result serverError(ServerError value),
    Result notFoundError(NotFoundError value),
    Result cacheError(CacheError value),
    Result geoLocationError(GeoLocationError value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result nameAlreadyInUse(NameAlreadyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameAlreadyInUse != null) {
      return usernameAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class UsernameAlreadyInUse implements CoreDataFailure {
  const factory UsernameAlreadyInUse() = _$UsernameAlreadyInUse;
}

abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) = _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

class _$EmailAlreadyInUseCopyWithImpl<$Res> extends _$CoreDataFailureCopyWithImpl<$Res> implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then) : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'CoreDataFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notFoundError(),
    @required Result cacheError(),
    @required Result geoLocationError(),
    @required Result usernameAlreadyInUse(),
    @required Result emailAlreadyInUse(),
    @required Result nameAlreadyInUse(),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result notFoundError(),
    Result cacheError(),
    Result geoLocationError(),
    Result usernameAlreadyInUse(),
    Result emailAlreadyInUse(),
    Result nameAlreadyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notFoundError(NotFoundError value),
    @required Result cacheError(CacheError value),
    @required Result geoLocationError(GeoLocationError value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result nameAlreadyInUse(NameAlreadyInUse value),
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
    Result serverError(ServerError value),
    Result notFoundError(NotFoundError value),
    Result cacheError(CacheError value),
    Result geoLocationError(GeoLocationError value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result nameAlreadyInUse(NameAlreadyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements CoreDataFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

abstract class $NameAlreadyInUseCopyWith<$Res> {
  factory $NameAlreadyInUseCopyWith(NameAlreadyInUse value, $Res Function(NameAlreadyInUse) then) = _$NameAlreadyInUseCopyWithImpl<$Res>;
}

class _$NameAlreadyInUseCopyWithImpl<$Res> extends _$CoreDataFailureCopyWithImpl<$Res> implements $NameAlreadyInUseCopyWith<$Res> {
  _$NameAlreadyInUseCopyWithImpl(NameAlreadyInUse _value, $Res Function(NameAlreadyInUse) _then) : super(_value, (v) => _then(v as NameAlreadyInUse));

  @override
  NameAlreadyInUse get _value => super._value as NameAlreadyInUse;
}

class _$NameAlreadyInUse implements NameAlreadyInUse {
  const _$NameAlreadyInUse();

  @override
  String toString() {
    return 'CoreDataFailure.nameAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NameAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result notFoundError(),
    @required Result cacheError(),
    @required Result geoLocationError(),
    @required Result usernameAlreadyInUse(),
    @required Result emailAlreadyInUse(),
    @required Result nameAlreadyInUse(),
  }) {
    assert(serverError != null);
    assert(notFoundError != null);
    assert(cacheError != null);
    assert(geoLocationError != null);
    assert(usernameAlreadyInUse != null);
    assert(emailAlreadyInUse != null);
    assert(nameAlreadyInUse != null);
    return nameAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result notFoundError(),
    Result cacheError(),
    Result geoLocationError(),
    Result usernameAlreadyInUse(),
    Result emailAlreadyInUse(),
    Result nameAlreadyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameAlreadyInUse != null) {
      return nameAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result notFoundError(NotFoundError value),
    @required Result cacheError(CacheError value),
    @required Result geoLocationError(GeoLocationError value),
    @required Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required Result nameAlreadyInUse(NameAlreadyInUse value),
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
    Result serverError(ServerError value),
    Result notFoundError(NotFoundError value),
    Result cacheError(CacheError value),
    Result geoLocationError(GeoLocationError value),
    Result usernameAlreadyInUse(UsernameAlreadyInUse value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result nameAlreadyInUse(NameAlreadyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameAlreadyInUse != null) {
      return nameAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class NameAlreadyInUse implements CoreDataFailure {
  const factory NameAlreadyInUse() = _$NameAlreadyInUse;
}
