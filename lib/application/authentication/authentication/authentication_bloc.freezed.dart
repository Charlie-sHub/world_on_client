// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  _AuthenticationCheckRequest authenticationCheckRequest() {
    return const _AuthenticationCheckRequest();
  }

  _LogOut logOut() {
    return const _LogOut();
  }
}

// ignore: unused_element
const $AuthenticationEvent = _$AuthenticationEventTearOff();

mixin _$AuthenticationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationCheckRequest(),
    @required Result logOut(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationCheckRequest(),
    Result logOut(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticationCheckRequest(_AuthenticationCheckRequest value),
    @required Result logOut(_LogOut value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationCheckRequest(_AuthenticationCheckRequest value),
    Result logOut(_LogOut value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(AuthenticationEvent value, $Res Function(AuthenticationEvent) then) = _$AuthenticationEventCopyWithImpl<$Res>;
}

class _$AuthenticationEventCopyWithImpl<$Res> implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;

  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

abstract class _$AuthenticationCheckRequestCopyWith<$Res> {
  factory _$AuthenticationCheckRequestCopyWith(_AuthenticationCheckRequest value, $Res Function(_AuthenticationCheckRequest) then) = __$AuthenticationCheckRequestCopyWithImpl<$Res>;
}

class __$AuthenticationCheckRequestCopyWithImpl<$Res> extends _$AuthenticationEventCopyWithImpl<$Res> implements _$AuthenticationCheckRequestCopyWith<$Res> {
  __$AuthenticationCheckRequestCopyWithImpl(_AuthenticationCheckRequest _value, $Res Function(_AuthenticationCheckRequest) _then) : super(_value, (v) => _then(v as _AuthenticationCheckRequest));

  @override
  _AuthenticationCheckRequest get _value => super._value as _AuthenticationCheckRequest;
}

class _$_AuthenticationCheckRequest implements _AuthenticationCheckRequest {
  const _$_AuthenticationCheckRequest();

  @override
  String toString() {
    return 'AuthenticationEvent.authenticationCheckRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthenticationCheckRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationCheckRequest(),
    @required Result logOut(),
  }) {
    assert(authenticationCheckRequest != null);
    assert(logOut != null);
    return authenticationCheckRequest();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationCheckRequest(),
    Result logOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationCheckRequest != null) {
      return authenticationCheckRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticationCheckRequest(_AuthenticationCheckRequest value),
    @required Result logOut(_LogOut value),
  }) {
    assert(authenticationCheckRequest != null);
    assert(logOut != null);
    return authenticationCheckRequest(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationCheckRequest(_AuthenticationCheckRequest value),
    Result logOut(_LogOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticationCheckRequest != null) {
      return authenticationCheckRequest(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationCheckRequest implements AuthenticationEvent {
  const factory _AuthenticationCheckRequest() = _$_AuthenticationCheckRequest;
}

abstract class _$LogOutCopyWith<$Res> {
  factory _$LogOutCopyWith(_LogOut value, $Res Function(_LogOut) then) = __$LogOutCopyWithImpl<$Res>;
}

class __$LogOutCopyWithImpl<$Res> extends _$AuthenticationEventCopyWithImpl<$Res> implements _$LogOutCopyWith<$Res> {
  __$LogOutCopyWithImpl(_LogOut _value, $Res Function(_LogOut) _then) : super(_value, (v) => _then(v as _LogOut));

  @override
  _LogOut get _value => super._value as _LogOut;
}

class _$_LogOut implements _LogOut {
  const _$_LogOut();

  @override
  String toString() {
    return 'AuthenticationEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authenticationCheckRequest(),
    @required Result logOut(),
  }) {
    assert(authenticationCheckRequest != null);
    assert(logOut != null);
    return logOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authenticationCheckRequest(),
    Result logOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authenticationCheckRequest(_AuthenticationCheckRequest value),
    @required Result logOut(_LogOut value),
  }) {
    assert(authenticationCheckRequest != null);
    assert(logOut != null);
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authenticationCheckRequest(_AuthenticationCheckRequest value),
    Result logOut(_LogOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthenticationEvent {
  const factory _LogOut() = _$_LogOut;
}

class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Authenticated authenticated() {
    return const _Authenticated();
  }

  _UnAuthenticated unAuthenticated() {
    return const _UnAuthenticated();
  }
}

// ignore: unused_element
const $AuthenticationState = _$AuthenticationStateTearOff();

mixin _$AuthenticationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unAuthenticated(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unAuthenticated(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result authenticated(_Authenticated value),
    @required Result unAuthenticated(_UnAuthenticated value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authenticated(_Authenticated value),
    Result unAuthenticated(_UnAuthenticated value),
    @required Result orElse(),
  });
}

abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(AuthenticationState value, $Res Function(AuthenticationState) then) = _$AuthenticationStateCopyWithImpl<$Res>;
}

class _$AuthenticationStateCopyWithImpl<$Res> implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;

  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) = __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then) : super(_value, (v) => _then(v as _Initial));

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
    @required Result authenticated(),
    @required Result unAuthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unAuthenticated(),
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
    @required Result authenticated(_Authenticated value),
    @required Result unAuthenticated(_UnAuthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authenticated(_Authenticated value),
    Result unAuthenticated(_UnAuthenticated value),
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

abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(_Authenticated value, $Res Function(_Authenticated) then) = __$AuthenticatedCopyWithImpl<$Res>;
}

class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res> implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(_Authenticated _value, $Res Function(_Authenticated) _then) : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;
}

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthenticationState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unAuthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unAuthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result authenticated(_Authenticated value),
    @required Result unAuthenticated(_UnAuthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authenticated(_Authenticated value),
    Result unAuthenticated(_UnAuthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthenticationState {
  const factory _Authenticated() = _$_Authenticated;
}

abstract class _$UnAuthenticatedCopyWith<$Res> {
  factory _$UnAuthenticatedCopyWith(_UnAuthenticated value, $Res Function(_UnAuthenticated) then) = __$UnAuthenticatedCopyWithImpl<$Res>;
}

class __$UnAuthenticatedCopyWithImpl<$Res> extends _$AuthenticationStateCopyWithImpl<$Res> implements _$UnAuthenticatedCopyWith<$Res> {
  __$UnAuthenticatedCopyWithImpl(_UnAuthenticated _value, $Res Function(_UnAuthenticated) _then) : super(_value, (v) => _then(v as _UnAuthenticated));

  @override
  _UnAuthenticated get _value => super._value as _UnAuthenticated;
}

class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated();

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticated(),
    @required Result unAuthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticated(),
    Result unAuthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result authenticated(_Authenticated value),
    @required Result unAuthenticated(_UnAuthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unAuthenticated != null);
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result authenticated(_Authenticated value),
    Result unAuthenticated(_UnAuthenticated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements AuthenticationState {
  const factory _UnAuthenticated() = _$_UnAuthenticated;
}
