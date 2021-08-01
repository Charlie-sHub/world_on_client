// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_data_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationDataFailureTearOff {
  const _$AuthenticationDataFailureTearOff();

  InvalidCredentials<T> invalidCredentials<T>() {
    return InvalidCredentials<T>();
  }

  UnregisteredUser<T> unregisteredUser<T>() {
    return UnregisteredUser<T>();
  }
}

/// @nodoc
const $AuthenticationDataFailure = _$AuthenticationDataFailureTearOff();

/// @nodoc
mixin _$AuthenticationDataFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidCredentials,
    required TResult Function() unregisteredUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidCredentials,
    TResult Function()? unregisteredUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials<T> value) invalidCredentials,
    required TResult Function(UnregisteredUser<T> value) unregisteredUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials<T> value)? invalidCredentials,
    TResult Function(UnregisteredUser<T> value)? unregisteredUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationDataFailureCopyWith<T, $Res> {
  factory $AuthenticationDataFailureCopyWith(
          AuthenticationDataFailure<T> value, $Res Function(AuthenticationDataFailure<T>) then) =
      _$AuthenticationDataFailureCopyWithImpl<T, $Res>;
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
  factory $InvalidCredentialsCopyWith(
          InvalidCredentials<T> value, $Res Function(InvalidCredentials<T>) then) =
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
  TResult when<TResult extends Object?>({
    required TResult Function() invalidCredentials,
    required TResult Function() unregisteredUser,
  }) {
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidCredentials,
    TResult Function()? unregisteredUser,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials<T> value) invalidCredentials,
    required TResult Function(UnregisteredUser<T> value) unregisteredUser,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials<T> value)? invalidCredentials,
    TResult Function(UnregisteredUser<T> value)? unregisteredUser,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class InvalidCredentials<T> implements AuthenticationDataFailure<T> {
  const factory InvalidCredentials() = _$InvalidCredentials<T>;
}

/// @nodoc
abstract class $UnregisteredUserCopyWith<T, $Res> {
  factory $UnregisteredUserCopyWith(UnregisteredUser<T> value, $Res Function(UnregisteredUser<T>) then) =
      _$UnregisteredUserCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$UnregisteredUserCopyWithImpl<T, $Res> extends _$AuthenticationDataFailureCopyWithImpl<T, $Res>
    implements $UnregisteredUserCopyWith<T, $Res> {
  _$UnregisteredUserCopyWithImpl(UnregisteredUser<T> _value, $Res Function(UnregisteredUser<T>) _then)
      : super(_value, (v) => _then(v as UnregisteredUser<T>));

  @override
  UnregisteredUser<T> get _value => super._value as UnregisteredUser<T>;
}

/// @nodoc

class _$UnregisteredUser<T> implements UnregisteredUser<T> {
  const _$UnregisteredUser();

  @override
  String toString() {
    return 'AuthenticationDataFailure<$T>.unregisteredUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnregisteredUser<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidCredentials,
    required TResult Function() unregisteredUser,
  }) {
    return unregisteredUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidCredentials,
    TResult Function()? unregisteredUser,
    required TResult orElse(),
  }) {
    if (unregisteredUser != null) {
      return unregisteredUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidCredentials<T> value) invalidCredentials,
    required TResult Function(UnregisteredUser<T> value) unregisteredUser,
  }) {
    return unregisteredUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidCredentials<T> value)? invalidCredentials,
    TResult Function(UnregisteredUser<T> value)? unregisteredUser,
    required TResult orElse(),
  }) {
    if (unregisteredUser != null) {
      return unregisteredUser(this);
    }
    return orElse();
  }
}

abstract class UnregisteredUser<T> implements AuthenticationDataFailure<T> {
  const factory UnregisteredUser() = _$UnregisteredUser<T>;
}
