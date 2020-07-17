// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

// ignore: unused_element
  _AuthenticationCheckRequested authenticationCheckRequested() {
    return const _AuthenticationCheckRequested();
  }

// ignore: unused_element
  _LoggedOut loggedOut() {
    return const _LoggedOut();
  }
}

// ignore: unused_element
const $AuthenticationEvent = _$AuthenticationEventTearOff();

mixin _$AuthenticationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationCheckRequested(),
    @required Result loggedOut(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationCheckRequested(),
    Result loggedOut(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result authenticationCheckRequested(
            _AuthenticationCheckRequested value),
    @required Result loggedOut(_LoggedOut value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationCheckRequested(_AuthenticationCheckRequested value),
    Result loggedOut(_LoggedOut value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

abstract class _$AuthenticationCheckRequestedCopyWith<$Res> {
  factory _$AuthenticationCheckRequestedCopyWith(
          _AuthenticationCheckRequested value,
          $Res Function(_AuthenticationCheckRequested) then) =
      __$AuthenticationCheckRequestedCopyWithImpl<$Res>;
}

class __$AuthenticationCheckRequestedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$AuthenticationCheckRequestedCopyWith<$Res> {
  __$AuthenticationCheckRequestedCopyWithImpl(
      _AuthenticationCheckRequested _value,
      $Res Function(_AuthenticationCheckRequested) _then)
      : super(_value, (v) => _then(v as _AuthenticationCheckRequested));

  @override
  _AuthenticationCheckRequested get _value =>
      super._value as _AuthenticationCheckRequested;
}

class _$_AuthenticationCheckRequested implements _AuthenticationCheckRequested {
  const _$_AuthenticationCheckRequested();

  @override
  String toString() {
    return 'AuthenticationEvent.authenticationCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthenticationCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationCheckRequested(),
    @required Result loggedOut(),
  }) {
    assert(authenticationCheckRequested != null);
    assert(loggedOut != null);
    return authenticationCheckRequested();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationCheckRequested(),
    Result loggedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationCheckRequested != null) {
      return authenticationCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result authenticationCheckRequested(
            _AuthenticationCheckRequested value),
    @required Result loggedOut(_LoggedOut value),
  }) {
    assert(authenticationCheckRequested != null);
    assert(loggedOut != null);
    return authenticationCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationCheckRequested(_AuthenticationCheckRequested value),
    Result loggedOut(_LoggedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationCheckRequested != null) {
      return authenticationCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationCheckRequested implements AuthenticationEvent {
  const factory _AuthenticationCheckRequested() =
      _$_AuthenticationCheckRequested;
}

abstract class _$LoggedOutCopyWith<$Res> {
  factory _$LoggedOutCopyWith(
          _LoggedOut value, $Res Function(_LoggedOut) then) =
      __$LoggedOutCopyWithImpl<$Res>;
}

class __$LoggedOutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$LoggedOutCopyWith<$Res> {
  __$LoggedOutCopyWithImpl(_LoggedOut _value, $Res Function(_LoggedOut) _then)
      : super(_value, (v) => _then(v as _LoggedOut));

  @override
  _LoggedOut get _value => super._value as _LoggedOut;
}

class _$_LoggedOut implements _LoggedOut {
  const _$_LoggedOut();

  @override
  String toString() {
    return 'AuthenticationEvent.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationCheckRequested(),
    @required Result loggedOut(),
  }) {
    assert(authenticationCheckRequested != null);
    assert(loggedOut != null);
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationCheckRequested(),
    Result loggedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result authenticationCheckRequested(
            _AuthenticationCheckRequested value),
    @required Result loggedOut(_LoggedOut value),
  }) {
    assert(authenticationCheckRequested != null);
    assert(loggedOut != null);
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationCheckRequested(_AuthenticationCheckRequested value),
    Result loggedOut(_LoggedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AuthenticationEvent {
  const factory _LoggedOut() = _$_LoggedOut;
}

class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _AuthenticationSuccess authenticationSuccess() {
    return const _AuthenticationSuccess();
  }

// ignore: unused_element
  _AuthenticationFailure authenticationFailure() {
    return const _AuthenticationFailure();
  }
}

// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

mixin _$AuthenticationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticationSuccess(),
    @required Result authenticationFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticationSuccess(),
    Result authenticationFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result authenticationSuccess(_AuthenticationSuccess value),
    @required Result authenticationFailure(_AuthenticationFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authenticationSuccess(_AuthenticationSuccess value),
    Result authenticationFailure(_AuthenticationFailure value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticationSuccess(),
    @required Result authenticationFailure(),
  }) {
    assert(initial != null);
    assert(authenticationSuccess != null);
    assert(authenticationFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticationSuccess(),
    Result authenticationFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result authenticationSuccess(_AuthenticationSuccess value),
    @required Result authenticationFailure(_AuthenticationFailure value),
  }) {
    assert(initial != null);
    assert(authenticationSuccess != null);
    assert(authenticationFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authenticationSuccess(_AuthenticationSuccess value),
    Result authenticationFailure(_AuthenticationFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationState {
  const factory _Initial() = _$_Initial;
}

abstract class _$AuthenticationSuccessCopyWith<$Res> {
  factory _$AuthenticationSuccessCopyWith(_AuthenticationSuccess value,
          $Res Function(_AuthenticationSuccess) then) =
      __$AuthenticationSuccessCopyWithImpl<$Res>;
}

class __$AuthenticationSuccessCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticationSuccessCopyWith<$Res> {
  __$AuthenticationSuccessCopyWithImpl(_AuthenticationSuccess _value,
      $Res Function(_AuthenticationSuccess) _then)
      : super(_value, (v) => _then(v as _AuthenticationSuccess));

  @override
  _AuthenticationSuccess get _value => super._value as _AuthenticationSuccess;
}

class _$_AuthenticationSuccess implements _AuthenticationSuccess {
  const _$_AuthenticationSuccess();

  @override
  String toString() {
    return 'AuthenticationState.authenticationSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthenticationSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticationSuccess(),
    @required Result authenticationFailure(),
  }) {
    assert(initial != null);
    assert(authenticationSuccess != null);
    assert(authenticationFailure != null);
    return authenticationSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticationSuccess(),
    Result authenticationFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationSuccess != null) {
      return authenticationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result authenticationSuccess(_AuthenticationSuccess value),
    @required Result authenticationFailure(_AuthenticationFailure value),
  }) {
    assert(initial != null);
    assert(authenticationSuccess != null);
    assert(authenticationFailure != null);
    return authenticationSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authenticationSuccess(_AuthenticationSuccess value),
    Result authenticationFailure(_AuthenticationFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationSuccess != null) {
      return authenticationSuccess(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationSuccess implements AuthenticationState {
  const factory _AuthenticationSuccess() = _$_AuthenticationSuccess;
}

abstract class _$AuthenticationFailureCopyWith<$Res> {
  factory _$AuthenticationFailureCopyWith(_AuthenticationFailure value,
          $Res Function(_AuthenticationFailure) then) =
      __$AuthenticationFailureCopyWithImpl<$Res>;
}

class __$AuthenticationFailureCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticationFailureCopyWith<$Res> {
  __$AuthenticationFailureCopyWithImpl(_AuthenticationFailure _value,
      $Res Function(_AuthenticationFailure) _then)
      : super(_value, (v) => _then(v as _AuthenticationFailure));

  @override
  _AuthenticationFailure get _value => super._value as _AuthenticationFailure;
}

class _$_AuthenticationFailure implements _AuthenticationFailure {
  const _$_AuthenticationFailure();

  @override
  String toString() {
    return 'AuthenticationState.authenticationFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthenticationFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticationSuccess(),
    @required Result authenticationFailure(),
  }) {
    assert(initial != null);
    assert(authenticationSuccess != null);
    assert(authenticationFailure != null);
    return authenticationFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticationSuccess(),
    Result authenticationFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationFailure != null) {
      return authenticationFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result authenticationSuccess(_AuthenticationSuccess value),
    @required Result authenticationFailure(_AuthenticationFailure value),
  }) {
    assert(initial != null);
    assert(authenticationSuccess != null);
    assert(authenticationFailure != null);
    return authenticationFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authenticationSuccess(_AuthenticationSuccess value),
    Result authenticationFailure(_AuthenticationFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationFailure != null) {
      return authenticationFailure(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationFailure implements AuthenticationState {
  const factory _AuthenticationFailure() = _$_AuthenticationFailure;
}
